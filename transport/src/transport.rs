use crate::{Error, InMessage, OutMessage};
use exocore_core::node::NodeId;
use futures::channel::mpsc;
use futures::channel::mpsc::SendError;
use futures::prelude::*;
use futures::sink::{Sink, SinkErrInto};
use futures::StreamExt;
use pin_project::pin_project;
use std::pin::Pin;
use std::task::{Context, Poll};

pub type TransportHandleOnStart = Box<dyn Future<Output = ()> + Send + Unpin + 'static>;

/// Handle for a cell & layer to the transport
pub trait TransportHandle: Future<Output = ()> + Send + Unpin + 'static {
    type Sink: Sink<OutEvent, Error = Error> + Send + Unpin + 'static;
    type Stream: Stream<Item = InEvent> + Send + Unpin + 'static;

    fn on_started(&self) -> TransportHandleOnStart;
    fn get_sink(&mut self) -> Self::Sink;
    fn get_stream(&mut self) -> Self::Stream;
}

/// Layer of the Exocore architecture to which a message is intented /
/// originating. Ex: Data layer
#[derive(Copy, Clone, Debug, PartialEq, Eq, Hash)]
pub enum TransportLayer {
    None = 0,
    Meta = 1,
    Common = 2,
    Data = 3,
    Index = 4,
    Client = 5,
}

impl TransportLayer {
    pub fn from_code(code: u8) -> Option<TransportLayer> {
        match code {
            0 => Some(TransportLayer::None),
            1 => Some(TransportLayer::Meta),
            2 => Some(TransportLayer::Common),
            3 => Some(TransportLayer::Data),
            4 => Some(TransportLayer::Index),
            5 => Some(TransportLayer::Client),
            _ => None,
        }
    }

    pub fn to_code(self) -> u8 {
        self as u8
    }
}

/// Connection status of a remote node via the transport.
#[derive(Copy, Clone, Debug, PartialEq, Eq)]
pub enum ConnectionStatus {
    Connecting,
    Connected,
    Disconnected,
}

#[derive(Clone)]
pub enum InEvent {
    Message(Box<InMessage>),
    NodeStatus(NodeId, ConnectionStatus),
}

pub enum OutEvent {
    Message(OutMessage),
}

/// Wraps mpsc Stream channel to map Transport's error without having a
/// convoluted type
pub struct MpscHandleStream {
    receiver: mpsc::Receiver<InEvent>,
}

impl MpscHandleStream {
    pub fn new(receiver: mpsc::Receiver<InEvent>) -> MpscHandleStream {
        MpscHandleStream { receiver }
    }
}

impl Stream for MpscHandleStream {
    type Item = InEvent;

    fn poll_next(mut self: Pin<&mut Self>, cx: &mut Context<'_>) -> Poll<Option<Self::Item>> {
        self.receiver.poll_next_unpin(cx)
    }
}

/// Wraps mpsc Sink channel to map Transport's error without having a convoluted
/// type
#[pin_project]
pub struct MpscHandleSink {
    #[pin]
    sender: SinkErrInto<mpsc::Sender<OutEvent>, OutEvent, Error>,
}

impl MpscHandleSink {
    pub fn new(sender: mpsc::Sender<OutEvent>) -> MpscHandleSink {
        MpscHandleSink {
            sender: sender.sink_err_into(),
        }
    }
}

impl Sink<OutEvent> for MpscHandleSink {
    type Error = Error;

    fn poll_ready(self: Pin<&mut Self>, cx: &mut Context<'_>) -> Poll<Result<(), Self::Error>> {
        self.project().sender.poll_ready(cx)
    }

    fn start_send(self: Pin<&mut Self>, item: OutEvent) -> Result<(), Self::Error> {
        self.project().sender.start_send(item)
    }

    fn poll_flush(self: Pin<&mut Self>, cx: &mut Context<'_>) -> Poll<Result<(), Self::Error>> {
        self.project().sender.poll_flush(cx)
    }

    fn poll_close(self: Pin<&mut Self>, cx: &mut Context<'_>) -> Poll<Result<(), Self::Error>> {
        self.project().sender.poll_close(cx)
    }
}

impl Into<Error> for SendError {
    fn into(self) -> Error {
        Error::Other(format!("Sink error: {}", self))
    }
}

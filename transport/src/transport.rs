use futures::prelude::*;
use futures::sync::mpsc;

use crate::{Error, InMessage, OutMessage};

///
/// Layer of the Exocore architecture to which a message is intented / originating.
/// Ex: Data layer
///
#[derive(Copy, Clone, Debug, PartialEq, Eq, Hash)]
pub enum TransportLayer {
    Meta = 1,
    Common = 2,
    Data = 3,
}

impl TransportLayer {
    pub fn from_code(code: u8) -> Option<TransportLayer> {
        match code {
            1 => Some(TransportLayer::Meta),
            2 => Some(TransportLayer::Common),
            3 => Some(TransportLayer::Data),
            _ => None,
        }
    }

    pub fn to_code(self) -> u8 {
        self as u8
    }
}

impl Into<u8> for TransportLayer {
    fn into(self) -> u8 {
        self.to_code()
    }
}

///
/// Handle to the Transport that allows a layer of the architecture to communicate with
/// other nodes for a given cell.
///
pub trait TransportHandle: Future<Item = (), Error = Error> + Send + 'static {
    type StartFuture: Future<Item = (), Error = Error>;
    type Sink: Sink<SinkItem = OutMessage, SinkError = Error> + Send + 'static;
    type Stream: Stream<Item = InMessage, Error = Error> + Send + 'static;

    fn on_start(&self) -> Self::StartFuture;
    fn get_sink(&mut self) -> Self::Sink;
    fn get_stream(&mut self) -> Self::Stream;
}

///
/// Wraps mpsc Stream channel to map Transport's error without having a convoluted type
///
pub struct MpscHandleStream {
    receiver: mpsc::Receiver<InMessage>,
}

impl MpscHandleStream {
    pub fn new(receiver: mpsc::Receiver<InMessage>) -> MpscHandleStream {
        MpscHandleStream { receiver }
    }
}

impl Stream for MpscHandleStream {
    type Item = InMessage;
    type Error = Error;

    fn poll(&mut self) -> Poll<Option<Self::Item>, Self::Error> {
        self.receiver.poll().map_err(|_err| {
            error!("Error receiving from incoming stream in MockTransportStream",);
            Error::Other("Error receiving from incoming stream".to_string())
        })
    }
}

///
/// Wraps mpsc Sink channel to map Transport's error without having a convoluted type
///
pub struct MpscHandleSink {
    sender: mpsc::Sender<OutMessage>,
}

impl MpscHandleSink {
    pub fn new(sender: mpsc::Sender<OutMessage>) -> MpscHandleSink {
        MpscHandleSink { sender }
    }
}

impl Sink for MpscHandleSink {
    type SinkItem = OutMessage;
    type SinkError = Error;

    fn start_send(&mut self, item: OutMessage) -> StartSend<OutMessage, Error> {
        self.sender.start_send(item).map_err(|err| {
            Error::Other(format!("Error calling 'start_send' to in_channel: {}", err))
        })
    }

    fn poll_complete(&mut self) -> Poll<(), Error> {
        self.sender.poll_complete().map_err(|err| {
            Error::Other(format!(
                "Error calling 'poll_complete' to in_channel: {}",
                err
            ))
        })
    }

    fn close(&mut self) -> Poll<(), Error> {
        self.sender
            .close()
            .map_err(|err| Error::Other(format!("Error calling 'close' to in_channel: {}", err)))
    }
}

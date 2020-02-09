#![deny(bare_trait_objects)]

#[macro_use]
extern crate failure;
#[macro_use]
extern crate log;

pub extern crate capnp;
pub mod protos;
pub(crate) use self::protos::generated::{common_capnp, data_chain_capnp, data_transport_capnp}; // generated capnp protos expect to be at root

pub mod cell;
pub mod crypto;
pub mod framing;
pub mod futures;
pub mod node;
pub mod range;
pub mod simple_store;
#[cfg(any(test, feature = "tests_utils"))]
pub mod tests_utils;
pub mod time;
pub mod utils;
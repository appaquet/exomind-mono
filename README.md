# Exocore
[![codecov](https://codecov.io/gh/appaquet/exocore/branch/master/graph/badge.svg?token=OKZAHfPlaP)](https://codecov.io/gh/appaquet/exocore)
![Build](https://github.com/appaquet/exocore/workflows/Push%20tester/badge.svg)

**Warning: Exocore is at a very early development stage, hence incomplete, unstable and probably totally unsafe. Use at your own risk.**

Exocore is a distributed applications framework with private and encrypted data storage. It can be used as a computing and 
storage backend for web and mobile applications, and is extensible via WebAssembly. It is designed to be resilient to 
failures, allow offline usage (ex: on mobile). Exocore exposes SDKs for web/WebAssembly, Mobile (Android/iOS) and Rust.

The primary concept in Exocore is a Cell, which is a unique container for a user's applications and data. 

A cell consists of:
* Chain nodes managing replication and storage by using a blockchain data structure.
* Index nodes managing indexation, querying and mutation of the data (collocated with chain node).
* Applications nodes run applications written in WebAssembly (that can be collocated with index nodes)
* Clients (fat or thin) that can also act as index, data and partially run applications' WebAssembly.

## Development status
* **Chain storage and replication layer**: Proof of concept
* **Transport layer**: Proof of concept
* **Index layer:** Proof of concept
* **SDKs**: In development
* **Security**: In development
* **Applications**: In development
* **Cell management**: Not yet started
* **Nodes discovery**: Not yet started
* **Blob storage (IPFS)**: Not yet started

## Dependencies
### General
* Build dependencies
    * On MacOS: Install Xcode and command lines tools
    * On Ubuntu: `apt install build-essential pkg-config libssl-dev`
    
* [Rust](https://www.rust-lang.org/learn/get-started)
  * Install using [rustup](https://www.rust-lang.org/learn/get-started)
  * Clippy and Rustfmt: `rustup component add clippy rustfmt`
  
* [Cap'n Proto](https://capnproto.org/install.html)
    * On MacOS: `brew install capnp` 
    * On Ubuntu: `apt install capnproto` 

* [Protobuf](https://developers.google.com/protocol-buffers/)
    * On MacOS: `brew install protobuf` 
    * On Ubuntu: `snap install protobuf` 
    
### Web (optional)
* See [Web WASM client README](./clients/web/README.md)

### Android (optional)
* See [Android client README](./clients/android/README.md)

### iOS (optional)
* See [iOS client README](./clients/ios/README.md)

## Usage & configuration
* CLI:
  * `./tools/install.sh` or `cd exo && cargo install --path .`

* Configuration
    * Most command requires a `config.yaml` file, for which an example can be found in here: [`./examples/config.yaml`]
    * At minimum, the config requires 2 keypair: one for the node, one for the cell.
    * The node keypair is unique per server/node, while the cell keypair is shared among servers that host the cell.
    
## Quick start
### Create a Cell hosted on 2 nodes
* `cp ./examples/config.yaml node1.yaml`
* `cp ./examples/config.yaml node2.yaml`
* For each node's config:
    * Generate keypair for the node: `exo keys generate`
    * Change the node's `keypair` and `public_key` config with the generated keypair.
    * Change `listen_addresses` with unique port per node.
    * Change cell's `data_directory` with unique data directory per node. 
    * Put the other node `public_key` and `addresses` in the cell's nodes section.
* Generate keypair for the cell: `exo keys generate` 
* Add this keypair in both `node1.yaml` and `node2.yaml` in the `cells` section.
* Validate config with `exo config validate <config file>`
* Initialize chain one first node: `exo cell --config node1.yaml --public_key <cell_public_key> create_genesis_block`
* Start both nodes:
    * Node 1: `exo server --config ./node1.yaml start`
    * Node 2: `exo server --config ./node2.yaml start`

### Launch sample web project
* Run the [web example](./examples/web):
  * Build WASM client
    * `yarn install && yarn build`
  * Start development server which will watch files and rebuild automatically:
    * `cd ./examples/web && yarn install && yarn start`
  * Generate cell configuration for web:
    * Convert config to JSON: `exo config standalone <config file>`
  * Open browser to [http://127.0.0.1:8080](http://127.0.0.1:8080)
    * Paste JSON config and save
  
## Documentation
* [Replication](chain/replication.md)

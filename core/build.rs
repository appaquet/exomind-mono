use std::env;

fn main() {
    if env::var("GENERATE_PROTOS").is_ok() {
        let capn_protos_file = vec![
            "protos/common.capnp",
            "protos/data_chain.capnp",
            "protos/data_transport.capnp",
            "protos/index_transport.capnp",
        ];
        for proto_file in capn_protos_file {
            capnpc::CompilerCommand::new()
                .file(proto_file)
                .run()
                .unwrap_or_else(|_| panic!("compiling {} schema", proto_file));
        }

        let prost_protos_file = vec![
            "protos/exocore/index/entity.proto",
            "protos/exocore/index/query.proto",
            "protos/exocore/index/mutation.proto",
            "protos/exocore/test/test.proto",
        ];
        prost_build::compile_protos(&prost_protos_file, &["protos/"]).expect("prost error");

        // generate config protos with serde's annotation for yaml/json deserialization
        // trick from https://github.com/danburkert/prost/issues/75
        let prost_protos_file = vec!["protos/exocore/core/config.proto"];
        let mut config = prost_build::Config::new();
        config.type_attribute(".", "#[derive(Serialize, Deserialize)]");
        config
            .compile_protos(&prost_protos_file, &["protos/"])
            .expect("prost error");
    }
}

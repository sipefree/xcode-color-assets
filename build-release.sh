#!/bin/bash

cargo build --release
cargo build --release --target x86_64-apple-darwin
lipo -create -output target/xcode-color-assets target/release/xcode-color-assets target/x86_64-apple-darwin/release/xcode-color-assets
tar czvf target/xcode-color-assets-RELEASE.tar.gz target/xcode-color-assets

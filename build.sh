curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. "$HOME/.cargo/env"
pnpm i
cargo uninstall wasm-bindgen-cli
cargo install wasm-bindgen-cli @0.2.100
wget https://github.com/WebAssembly/binaryen/releases/download/version_128/binaryen-version_128-x86_64-linux.tar.gz
tar -xvzf binaryen-version_128-x86_64-linux.tar.gz
export PATH="$PWD/binaryen-version_128/bin:$PATH"
cargo install wasm-snip
wasm-opt --version
wasm-snip --version
wasm-bindgen --version
cargo --version
pnpm rewriter:build
pnpm build

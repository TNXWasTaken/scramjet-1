curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. "$HOME/.cargo/env"
pnpm i
cargo install wasm-bindgen-cli
wget https://github.com/WebAssembly/binaryen/releases/download/version_128/binaryen-version_128-x86_64-linux.tar.gz
tar -xvzf binaryen-version_128-x86_64-linux.tar.gz
export PATH="$PATH:$HOME/binaryen-version_128/bin"
./binaryen-version_128/bin/wasm-opt --version
wasm-opt --version
cargo install wasm-snip
pnpm rewriter:build
pnpm build

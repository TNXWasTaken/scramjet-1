curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. "$HOME/.cargo/env"
pnpm i
cargo install wasm-bindgen-cli
wget https://github.com/WebAssembly/binaryen/releases/download/version_128/binaryen-version_128-x86_64-linux.tar.gz
tar -xvzf binaryen-version_128-x86_64-linux.tar.gz
export PATH="$PATH:/binaryen-version_128-x86_64-linux/bin"
cargo install wasm-snip
pnpm rewriter:build
pnpm build

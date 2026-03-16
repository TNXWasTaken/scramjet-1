curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. "$HOME/.cargo/env"
pnpm i
cargo install wasm-bindgen-cli
cargo add binaryen
cargo install wasm-snip
pnpm rewriter:build
pnpm build

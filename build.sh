curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. "$HOME/.cargo/env"
pnpm i
cargo install wasm-bindgen
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install binaryen
cargo install wasm-snip
pnpm rewriter:build
pnpm build

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup default stable
rustup update
rustup target add thumbv7em-none-eabihf
cargo install cargo-generate cargo-binutils
rustup component add llvm-tools-preview
sudo apt install -y openocd gdb-multiarch
git clone https://github.com/krenzlin/rust-stm32f446-blinky
cd rust-stm32f466-blinky
cargo build
sudo ./flash_device.sh target/thumbv7em-none-eabihf/debug/blinky

.PHONY: stow_install

source = hknlof
target = $(HOME)
rust   = skim ripgrep

install:
	stow --dir=$(source) --target=$(target) .

stow_install:
	brew install stow

clean:
	stow --dir=$(source) --target=$(target) --delete .

cargo_install:
	cargo install $(rust)

cargo_uninstall:
	cargo uninstall $(rust)

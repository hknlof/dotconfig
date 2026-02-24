.PHONY: stow_install

target = $(HOME)/.config

install: fish htop nvim opencode uv zed
	stow --target=$(target) .

stow_install:
	brew install stow

clean:
	stow --target=$(target) --delete .


.PHONY: stow_install

source = hknlof
target = $(HOME)

install:
	stow --dir=$(source) --target=$(target) .

stow_install:
	brew install stow

clean:
	stow --dir=$(source) --target=$(target) --delete .


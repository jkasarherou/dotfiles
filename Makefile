.PHONY: all dotfiles

all: dotfiles

dotfiles:
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".git"); do \
		f=$$(basename $$file); \
		ln -sfn $$file $(HOME)/$$f; \
	done; \

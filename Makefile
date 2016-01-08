.PHONY: all
all: .gitignore
.gitignore: ../texheader/gitignore
	cp $< $@

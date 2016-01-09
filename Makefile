MODULE = VREP

.PHONY: default
default: work
.PHONY: pdf
pdf: $(MODULE).pdf

TEX = $(MODULE).tex bib.tex headmisc.tex intro.tex install.tex
TEX += tutors.tex habr57.tex bubblebob.tex buildmodel.tex
TEX += extension.tex plugins.tex dynamics.tex

TEX += excontroller.tex chscript.tex ctlplugin.tex remoteapi.tex 
TEX += rosnode.tex sockets.tex

TEX += script.tex lexer.tex parser.tex scriptcpp.tex
TEX += langtutor.tex

include ../texheader/Makefile

work: work.tex $(TEX)
	$(LATEX) $< && $(LATEX) $<

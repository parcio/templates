PDF_INKSCAPE = $(subst .svg,.pdf,$(wildcard figures/*.svg))

LATEXMK_AUX = aux
LATEXMK_OPT = -auxdir=$(LATEXMK_AUX)

.PHONY: all figures clean

all: thesis.pdf

figures: $(PDF_INKSCAPE)

figures/%.pdf: figures/%.svg
	inkscape --export-filename=$@ $<

thesis.pdf: figures thesis.tex
	latexmk $(LATEXMK_OPT) -pdf thesis

clean:
	latexmk $(LATEXMK_OPT) -C
	rm -rf $(LATEXMK_AUX)
	rm -f $(PDF_INKSCAPE)

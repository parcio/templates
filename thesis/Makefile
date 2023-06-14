PDF_INKSCAPE = $(subst .svg,.pdf,$(wildcard figures/*.svg))
PDF_ODG	= $(subst .odg,.pdf,$(wildcard figures/*.odg))
LATEXMK_OUT	= out
LATEXMK_OPT	= -pdf -auxdir=$(LATEXMK_OUT) -auxdir=$(LATEXMK_OUT)

all: thesis.pdf 

figures: $(PDF_INKSCAPE) $(PDF_ODG)

figures/%.pdf: figures/%.svg
	inkscape --export-filename=$@ --export-type=pdf $<

figures/%.pdf: figures/%.odg
	unoconv --format svg $<
	inkscape --export-filename=$@ --export-type=pdf $*.svg

thesis.pdf: figures thesis.tex 
	latexmk $(LATEXMK_OPT) thesis

clean:
	# Clear all outputs
	@latexmk -auxdir=$(LATEXMK_OUT) -C > /dev/null
	# Wipe auxiliary files
	@rm -rf $(LATEXMK_OUT)
	@rm -f $(PDF_GNUPLOT)
	@rm -f $(PDF_INKSCAPE)
	@rm -f $(PDF_ODG)
	@echo "Done."



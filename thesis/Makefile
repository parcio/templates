PDF_INKSCAPE = $(subst .svg,.pdf,$(wildcard figures/*.svg))
PDF_ODG	= $(subst .odg,.pdf,$(wildcard figures/*.odg))
LATEXMK_AUX	= aux
LATEXMK_OPT	= -pdf -auxdir=$(LATEXMK_AUX)

all: figures thesis.pdf 

figures: $(PDF_INKSCAPE) $(PDF_ODG)

figures/%.pdf: figures/%.svg
	inkscape --export-filename=$@ --export-type=pdf $<

figures/%.pdf: figures/%.odg
	unoconv --format svg $<
	inkscape --export-filename=$@ --export-type=pdf $*.svg

thesis.pdf: thesis.tex
	latexmk $(LATEXMK_OPT) thesis

# Force a rebuild even if no .tex changes occurred, useful for updating figures
# and such
rebuild:
	latexmk -g $(LATEXMK_OPT) thesis

clean:
	# Clear all outputs
	@latexmk -auxdir=aux -C > /dev/null
	# Wipe auxiliary files
	@rm -rf $(LATEXMK_AUX)
	@rm -f $(PDF_GNUPLOT)
	@rm -f $(PDF_INKSCAPE)
	@rm -f $(PDF_ODG)
	@echo "Done."



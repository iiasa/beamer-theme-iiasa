all: demo.pdf demo-2019.pdf

%.pdf: %.tex FORCE_LATEXMK
	latexmk -xelatex $<

.PHONY: FORCE_LATEXMK

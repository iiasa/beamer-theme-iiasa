all: 2019.pdf 2024.pdf

%.pdf: %.tex FORCE_LATEXMK
	latexmk -xelatex $<

.PHONY: FORCE_LATEXMK

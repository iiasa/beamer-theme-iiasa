all: demo.pdf

demo.pdf: demo.tex FORCE_LATEXMK
	latexmk -xelatex $<

.PHONY: FORCE_LATEXMK

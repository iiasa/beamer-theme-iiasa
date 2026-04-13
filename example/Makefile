all: 2019.pdf 2024.pdf 2025a.pdf 2025b.pdf 2025c.pdf 2025d.pdf

%.pdf: %.tex FORCE_LATEXMK
	latexmk -xelatex $<

.PHONY: FORCE_LATEXMK

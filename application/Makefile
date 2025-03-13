all: application.pdf

%.pdf: %.tex vision.tex approach.tex
	pdflatex $*
	bibtex bu1
	pdflatex $<
	pdflatex $<

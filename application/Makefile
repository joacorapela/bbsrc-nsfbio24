all: application.pdf

%.pdf: %.tex vision.tex approach.tex dataAnalysis.tex
	pdflatex $*
	bibtex bu1
	bibtex bu2
	pdflatex $<
	pdflatex $<

all: application.pdf

application.pdf: application.tex vision.tex approach.tex offlineMethods.tex rtmlMethods.tex visualExploration.tex offlineSpikeSorting.tex onlineSpikeSorting.tex
	pdflatex application.tex
	bibtex bu1
	bibtex bu2
	pdflatex application.tex
	pdflatex application.tex

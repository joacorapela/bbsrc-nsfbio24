all: deliverablesPastFutureWork.pdf

deliverablesPastFutureWork.pdf: deliverablesPastFutureWork.tex vision.tex acquisition.tex dataVisualisation.tex spikeSorting.tex dataAnalysis.tex
	pdflatex deliverablesPastFutureWork.tex
	bibtex deliverablesPastFutureWork.aux
	pdflatex deliverablesPastFutureWork.tex
	pdflatex deliverablesPastFutureWork.tex

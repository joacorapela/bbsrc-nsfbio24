all: deliverablesPreviousFutureWork.pdf

# deliverablesPreviousFutureWork.pdf: deliverablesPreviousFutureWork.tex aims.tex acquisition.tex dataSharing.tex dataVisualisation.tex spikeSorting.tex dataAnalysis.tex intelligentExpControl.tex
deliverablesPreviousFutureWork.pdf: deliverablesPreviousFutureWork.tex aims.tex acquisition.tex dataSharing.tex dataVisualisation.tex dataAnalysis.tex
	pdflatex deliverablesPreviousFutureWork.tex
	bibtex deliverablesPreviousFutureWork.aux
	pdflatex deliverablesPreviousFutureWork.tex
	pdflatex deliverablesPreviousFutureWork.tex

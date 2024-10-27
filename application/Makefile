all: loi.pdf

loi.pdf: loi.tex coreTeam.tex vision.tex approach.tex usApplicants.tex figures/focusAreas.tex figures/dataAnalysisBehavior.tex figures/dataAnalysisNeural.tex figures/figArena.tex
	pdflatex loi.tex
	bibtex loi.aux
	pdflatex loi.tex
	pdflatex loi.tex

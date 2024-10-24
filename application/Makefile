all: application.pdf

# application.pdf: application.tex summary.tex vision.tex figures/resourceFig.tex approach.tex figures/inferenceDrivenExp.tex
application.pdf: application.tex coreTeam.tex vision.tex approach.tex usApplicants.tex figures/focusAreas.tex figures/dataAnalysisBehavior.tex figures/dataAnalysisNeural.tex figures/figArena.tex
	pdflatex application.tex
	bibtex application.aux
	pdflatex application.tex
	pdflatex application.tex

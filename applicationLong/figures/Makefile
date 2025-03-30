all: ./aims.png ./interactiveVisualAnalyticsMain.pdf

%.png: %.dot
	dot -Tsvg $*.dot > $*.svg
	convert $*.svg $*.png

%.pdf: %.tex
	pdflatex $<

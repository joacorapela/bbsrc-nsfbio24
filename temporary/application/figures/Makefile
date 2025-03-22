all: ./aims.png

%.png: %.dot
	dot -Tsvg $*.dot > $*.svg
	convert $*.svg $*.png

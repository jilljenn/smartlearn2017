all:
	pandoc article.md -o article.tex
	pdflatex proceedings && open proceedings.pdf

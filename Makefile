TEX = resume.tex
PDF = resume.pdf

.PHONY: all clean watch

all: $(PDF)

$(PDF): $(TEX)
	pdflatex -interaction=nonstopmode $(TEX)
	pdflatex -interaction=nonstopmode $(TEX)

watch:
	latexmk -pdf -pvc $(TEX)

clean:
	rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz $(PDF)

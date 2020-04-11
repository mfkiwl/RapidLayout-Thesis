all: main

clean: 
	rm -f *.aux *.toc *.blg *.out *.bbl *.log *.fls *.loc *.soc *.fdb_latexmk main.pdf main.pdf
	
main:
	xelatex -shell-escape main.tex
	bibtex main
	xelatex -shell-escape main.tex
	xelatex -shell-escape main.tex

RM		= rm -f
PDFLATEX	= pdflatex
BIBTEX		= bibtex

all: btsim.pdf tidy

tidy:
	$(RM) *.log
	$(RM) *.aux
	$(RM) *.bbl
	$(RM) *.blg
	$(RM) *.dvi
	$(RM) *.ps

clean: tidy
	$(RM) btsim.pdf

show: clean all
	open btsim.pdf

btsim.pdf: btsim.tex
	$(PDFLATEX) btsim
	$(BIBTEX) btsim
	$(PDFLATEX) btsim
	$(PDFLATEX) btsim


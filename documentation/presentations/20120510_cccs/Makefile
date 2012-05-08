#CC_TEX = latex -interaction=nonstopmode -file-line-error -halt-on-error
#CC_PS = dvips
#CC_PDF = ps2pdf
CC_PDFTEX = pdflatex -interaction=nonstopmode -file-line-error -halt-on-error
#CC_PDFMERGE = gs -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -dEmbedAllFonts=true
CC_BIBTEX = bibtex

DOCUMENTS = rd.pdf draft.pdf quick.pdf handout.pdf 54.pdf 169.pdf 43.pdf 1610.pdf 32.pdf 149.pdf

default: 54.pdf
all: $(DOCUMENTS)

rd: rd.pdf

draft: draft.pdf

quick: quick.pdf

article: handout.pdf


rd.pdf: rd.tex
	$(CC_PDFTEX) $<

draft.pdf: draft.tex
	$(CC_PDFTEX) $<

quick.pdf: quick.tex
	$(CC_PDFTEX) $<

%.pdf: %.tex
	$(CC_PDFTEX) $<
	#make $*-blx.bib
	$(CC_PDFTEX) $<
	$(CC_PDFTEX) $<




########################################################################
#dependencies from config files
rd.pdf draft.pdf quick.pdf handout.pdf 43.pdf 54.pdf 169.pdf 1610.pdf: head.tex body.tex makefile
quick.tex: 54.tex

########################################################################
#Bibtex

%-blx.bib: %.aux
	$(CC_BIBTEX) $<

########################################################################
#clean
clean:
	rm -f *.log *.aux *.out *.run.xml *.snm *.vrb *.nav *.toc *.blg *.bbl *~

superclean: clean
	rm -f *.dvi *.ps *-blx.bib

superclean_pdf: superclean
	rm -f $(DOCUMENTS)

.PHONY: default rd article all clean superclean superclean_pdf

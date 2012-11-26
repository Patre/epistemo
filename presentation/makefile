tex_cmd=pdflatex

apprentissage.pdf: apprentissage.tex includes/*.tex
	${tex_cmd} apprentissage.tex


all:
	make apprentissage.pdf
	bibtex	apprentissage.aux
	@touch apprentissage.tex
	make apprentissage.pdf
	@touch apprentissage.tex
	make apprentissage.pdf


clean:
	@rm -f *.aux
	@rm -f *.glg
	@rm -f *.glo
	@rm -f *.gls
	@rm -f *.ist
	@rm -f *.log
	@rm -f *.maf
	@rm -f *.mtc*
	@rm -f *.out
	@rm -f *.toc
	@rm -f *.bbl
	@rm -f *.blg
	@rm -f *.brf
	@rm -f *.nav
	@rm -f *.snm

mrproper:
	make clean
	@rm *.pdf

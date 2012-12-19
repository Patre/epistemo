tex_cmd=pdflatex

rapport: rapport.tex quoi.tex pourquoi.tex comment.tex 
	${tex_cmd} rapport.tex

rapport.glo: rapport
	${tex_cmd} rapport.tex

glo: rapport.glo
	makeglossaries rapport.glo

rapport.aux: rapport

bib: rapport.aux
	bibtex rapport

all:
	make rapport
	make glo
	make bib
	make rapport
	make rapport


clean:
	@rm -f *.aux
	@rm -f *.glg
	@rm -f *.glo
	@rm -f *.gls
	@rm -f *.ist
	@rm -f *.log
	@rm -f *.maf
	@rm -f *.mtc
	@rm -f *.out
	@rm -f *.toc 
	@rm -f *.bbl *.blg *.lof *.xdy *.acn

mrproper:
	make clean
	@rm -f *.pdf

mrclean:
	make mrproper

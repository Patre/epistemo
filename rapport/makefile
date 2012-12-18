tex_cmd=pdflatex

rapport.pdf: rapport.tex quoi.tex pourquoi.tex comment.tex 
	${tex_cmd} rapport.tex

rapport.glo: rapport.tex
	${tex_cmd} rapport.tex

glo: rapport.glo
	makeglossaries rapport.glo

all:
	make rapport.pdf
	make glo
	@touch rapport.tex
	make rapport.pdf


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

mrproper:
	make clean
	@rm -f *.pdf

mrclean:
	make mrproper

tex_cmd=pdflatex

rapport.pdf: rapport.tex
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
	@rm *.aux
	@rm *.glg
	@rm *.glo
	@rm *.gls
	@rm *.ist
	@rm *.log
	@rm *.maf
	@rm *.mtc*
	@rm *.out
	@rm *.toc

mrproper:
	make clean
	@rm *.pdf

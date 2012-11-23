tex_cmd=pdflatex

presentation.pdf: apprentissage.tex
	${tex_cmd} apprentissage.tex


all:
	make presentation.pdf
	bibtex	presentation.aux
	@touch presentation.tex
	make presentation.pdf
	@touch presentation.tex
	make presentation.pdf


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

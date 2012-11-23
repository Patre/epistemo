tex_cmd=pdflatex

presentation.pdf: apprentissage.tex
	${tex_cmd} apprentissage.tex


all:
	make apprentissage.pdf
	bibtex	apprentissage.aux
	@touch apprentissage.tex
	make apprentissage.pdf
	@touch apprentissage.tex
	make apprentissage.pdf


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

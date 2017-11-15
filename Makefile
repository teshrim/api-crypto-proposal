

proposal.pdf  : *.tex 
	pdflatex proposal

both  : *.tex 
	pdflatex onepage
	pdflatex transitions
	pdflatex proposal 

tf : *.tex
	pdflatex transitions
	bibtex transitions
	pdflatex transitions
	pdflatex transitions

full  : *.tex
	pdflatex proposal
	bibtex proposal
	pdflatex proposal
	pdflatex proposal
#	pdflatex onepage	
#	pdflatex transitions
#	bibtex transitions
#	pdflatex transitions
#	pdflatex transitions


wc: full
	pdftk proposal.pdf cat 16-20 output works-cited.pdf

clean :
	rm *.{aux,bbl,blg,log,out}
	

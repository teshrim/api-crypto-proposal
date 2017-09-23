

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


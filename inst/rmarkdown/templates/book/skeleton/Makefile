clean:
	rm -fv *.aux *.dvi *.log *.toc *.bak *~ *.blg *.bbl *.lot *.lof
	rm -fv *.nav *.snm *.out *.pyc \#*\# _region_* _tmp.* *.vrb
	rm -fv Rplots.pdf *.RData
	rm -fv *.gz
	rm -R figure

pdf:
	Rscript -e 'bookdown::render_book("index.Rmd", "oakdown::thesis_pdf")'
	rm -f *.log *.mtc* *.maf *.aux *.bcf *.lof *.lot *.out *.toc 
	Rscript -e 'browseURL("_book/book.pdf")'

gitbook:
	Rscript -e 'bookdown::render_book("index.Rmd", "oakdown::thesis_gitbook")'
	Rscript -e 'browseURL("_book/index.html")'

getOAKdefn:
	rm -rf OAKdefn/
	git clone --depth=1 https://github.com/omkarakatta/OAKdefn
	mv OAKdefn/OAKdefn.sty OAKdefn.sty
	rm -rf OAKdefn/

getmasterbib:
	rm -rf papers/
	git clone --depth=1 https://github.com/omkarakatta/papers
	mv papers/master.bib master.bib
	rm -rf papers/

getmakefile:
	rm -rf Makefile
	git clone --depth=1 https://github.com/omkarakatta/oakdown-makefile
	mv oakdown-makefile/Makefile Makefile
	rm -rf oakdown-makefile/

cleanpdf:
	rm *.pdf

cleanR:
	rm *.R

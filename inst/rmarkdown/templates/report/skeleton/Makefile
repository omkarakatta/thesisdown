clean:
	rm -fv *.aux *.dvi *.log *.toc *.bak *~ *.blg *.bbl *.lot *.lof
	rm -fv *.nav *.snm *.out *.pyc \#*\# _region_* _tmp.* *.vrb
	rm -fv Rplots.pdf *.RData
	rm -fv *.gz
	rm -R figure

pdf:
	Rscript -e 'bookdown::render_book("index.Rmd", "bookdown::pdf_document2")'
	rm -f *.log *.mtc* *.maf *.aux *.bcf *.lof *.lot *.out *.toc 
	mkdir -p rendered/pdf
	mv _book/_main.pdf rendered/pdf/report.pdf
	Rscript -e 'browseURL("rendered/pdf/report.pdf")'
	rm -rf _book/

html:
	Rscript -e 'bookdown::render_book("index.Rmd", "bookdown::html_document2")'
	mkdir -p rendered/html
	mv report.html rendered/html/report.html
	Rscript -e 'browseURL("rendered/html/report.html")'

slides:
	Rscript -e 'rmarkdown::render("index.Rmd", "beamer_presentation", encoding = "UTF-8")'
	rm -f *.log *.mtc* *.maf *.aux *.bcf *.lof *.lot *.out *.toc 
	mkdir -p rendered/slides
	mv index.pdf rendered/slides/slides.pdf
	mv index.tex rendered/slides/index.tex
	Rscript -e 'browseURL("rendered/slides/slides.pdf")'

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

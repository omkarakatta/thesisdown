clean:
	rm -fv *.aux *.dvi *.log *.toc *.bak *~ *.blg *.bbl *.lot *.lof
	rm -fv *.nav *.snm *.out *.pyc \#*\# _region_* _tmp.* *.vrb
	rm -fv Rplots.pdf *.RData
	rm -fv *.gz
	rm -R figure

getOAKdefn:
	rm -rf OAKdefn/
	git clone --depth=1 https://github.com/omkarakatta/OAKdefn
	rm -rf OAKdefn/.git

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

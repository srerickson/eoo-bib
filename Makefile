zoteroURI = http://127.0.0.1:23119/better-bibtex/collection?/1/Current%20Projects/EoO-Shared.bibtex

default: bib html

html:
	pandoc -f markdown+header_attributes -o docs/index.html --standalone --filter pandoc-citeproc  index.md
	cp eoo.bibtex docs/eoo.bibtex

bib:
	 wget -O eoo.bibtex $(zoteroURI)
LATEXMK ?= latexmk

.PHONY: all pdf doc bind sync

all: bind sync

pdf:
	$(LATEXMK) -xelatex -interaction=nonstopmode -halt-on-error Feng.Li-CV.tex Feng.Li-CV-CN.tex

doc:
	pandoc Feng.Li-CV.tex -o Feng.Li-CV.docx --bibliography=/home/fli/texmf/bibtex/bib/publications-feng.bib --citeproc
	pandoc Feng.Li-CV-CN.tex -o Feng.Li-CV-CN.docx --bibliography=/home/fli/texmf/bibtex/bib/publications-feng.bib --citeproc

bind: pdf
	pdftk Feng.Li-CV.pdf Feng.Li-CV-CN.pdf output Feng.Li-CV-EN-CN.pdf

sync:
	rsync -av *.pdf ~/nextcloud/feng.li/cv/

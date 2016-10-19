


.PHONY: clean

all: nddiss2e.cls nddiss2e.pdf

clean:
	rm -rf $(addprefix nddiss2e.,aux glo gls idx ilg ind out toc)

real-clean: clean
	rm -rf $(addprefix nddiss2e.,cls dvi log pdf)

nddiss2e.pdf: nddiss2e.dtx
	latex $<
	latex $<
	makeindex -s gglo.ist -o nddiss2e.gls nddiss2e.glo
	latex $<
	pdflatex $<

nddiss2e.cls template.tex: nddiss2e.ins
	latex $<


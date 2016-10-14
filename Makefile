

target:=nddiss2e

.PHONY: clean

all: ${target}.pdf

clean:
	rm -rf ${target}.aux ${target}.glo ${target}.gls ${target}.idx ${target}.ilg ${target}.ind ${target}.out ${target}.toc

real-clean: clean
	rm -rf ${target}.cls ${target}.dvi ${target}.log ${target}.pdf

${target}.pdf: ${target}.dtx
	latex ${target}.ins
	latex $<
	latex $<
	makeindex -s gglo.ist -o ${target}.gls ${target}.glo
	latex $<
	pdflatex $<

${target}.cls: ${target}.dtx
	latex $<
	latex $<


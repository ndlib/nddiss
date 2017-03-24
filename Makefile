
adv_files:=ltxdoc.cfg\
	nddiss2e.bst \
	nddiss2e.dtx \
	nddiss2e.ins \
	nddiss2enoarticletitles.bst \
	process.sh \
	README.md

std_files:=nddiss2e.bst \
	nddiss2e.cls \
	nddiss2e.pdf \
	nddiss2enoarticletitles.bst \
	template.tex

ctan_files:=nddiss2e.dtx \
	nddiss2e.pdf \
	README.md \
	LICENSE \
	ltxdoc.cfg \
	nddiss2e.bst \
	nddiss2e.ins \
	process.sh


.PHONY: clean real-clean dist ctan

all: nddiss2e.cls nddiss2e.pdf

clean:
	rm -rf $(addprefix nddiss2e.,aux glo gls idx ilg ind out toc)
	rm -rf AdvDistribution StandDistribution nddiss

real-clean: clean
	rm -rf $(addprefix nddiss2e.,cls dvi log pdf)

nddiss2e.pdf: nddiss2e.dtx
	latex $<
	latex $<
	makeindex -s gglo.ist -o nddiss2e.gls nddiss2e.glo
	latex $<
	pdflatex $<

nddiss2e.cls template.tex: nddiss2e.ins nddiss2e.dtx
	latex $<

dist: AdvDistribution.zip StandDistribution.zip ctan.zip

ctan: ctan.zip

AdvDistribution.zip: ${adv_files}
	mkdir -p AdvDistribution
	cp ${adv_files} AdvDistribution
	zip -r AdvDistribution.zip AdvDistribution

StandDistribution.zip: ${std_files}
	mkdir -p StandDistribution
	cp ${std_files} StandDistribution
	zip -r StandDistribution.zip StandDistribution

ctan.zip: ${ctan_files}
	mkdir -p nddiss
	cp ${ctan_files} nddiss
	zip -r nddiss.zip nddiss

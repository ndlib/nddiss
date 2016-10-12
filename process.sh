#!/bin/sh
filen=nddiss2e
echo $filen
latex ${filen}.ins
latex ${filen}.dtx
latex ${filen}.dtx
makeindex -s gglo.ist -o ${filen}.gls ${filen}.glo
makeindex -s gind.ist -o ${filen}.ind ${filen}.idx
latex ${filen}.dtx
pdflatex ${filen}.dtx
rm -fr ${filen}.aux
rm -fr ${filen}.glo
rm -fr ${filen}.gls
rm -fr ${filen}.idx
rm -fr ${filen}.ilg
rm -fr ${filen}.ind
#rm -fr ${filen}.log
rm -fr ${filen}.out
rm -fr ${filen}.toc

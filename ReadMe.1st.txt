==============================================================

Notre Dame's Dissertation document class by Sameer Vijay
that adhered to the University of Notre Dame guidelines
published in Spring 2004, and has been updated by Megan
Patnott to adhere to the University of Notre Dame guidelines
as of Spring 2013.

Please send any improvements/suggestions to :
    Shari Hill, Graduate Reviewer.
    sharihill@nd.edu or shill2@nd.edu

==============================================================

This is a dissertation class file for the University of Notre
Dame, provided by Sameer Vijay and updated by Megan Patnott. 
It can also be used for formatting any thesis as well.

This class file can be used by students with their
own TeX installation, and as such does not need to be
installed in a central file location. One can install it
in a local TEXMF tree on a Unix home dir, Windows MikTeX
installation, or a TexLive installation. It must be in a 
path searchable by LaTeX. Alternatively, one can simply put 
the class file in the same folder/directory as one's dissertation.

EXTRACTING
----------
In what follows, note that "$" is not part of the commands.

To obtain the nddiss2e class file, process the 'nddiss2e.ins'
through LaTeX. In the terminal (the Command Prompt or Run window, on a Windows system) use the command
   $ latex nddiss2e.ins
Note that you need to be in the same folder as nddiss2e.ins or use its complete pathname. To move to "Folder" in your documents on a Windows system type
   cd Documents\Folder
at the prompt after opening the command prompt window.

This will create 2 files - nddiss2e.cls (the classfile) and
template.tex (a template file)

To obtain the documentation for the nddiss2e class, it is important that you have the file ltxdoc.cfg in the same directory as nddiss2e.dtx. Use the following commands to build the file:
   $ latex nddiss2e.dtx
   $ latex nddiss2e.dtx
   $ makeindex -s gglo.ist -o nddiss2e.gls nddiss2e.glo
   $ makeindex -s gglo.ist -o nddiss2e.ind nddiss2e.idx
   $ latex nddiss2e.dtx

This will create a dvi file (nddiss2e.dvi) which is the
documentation for the nddiss2e classfile. If you have pdfTeX
installed as well, you can now use the following command to
generate a pdf documentation.
   $ pdflatex nddiss2e.dtx

Alternatively, one can use the included `process.sh' shell script
to carry out all of Sameer's recommended steps. First run
   $ chmod 755 process.sh
to change the permissions, then run
   $ sh process.sh
Note that this will (probably) not work on a Windows system.


TEXMF TREE
----------

As mentioned earlier, it is possible to install this class in a
local TEXMF tree. For e.g. in a Unix environment, it can be
installed in ~/texmf/tex/latex/nddiss2e/. The file nddiss2e.bst
can be installed in ~/texmf/bibtex/bst/base/. Make sure to run
`cd ~/texmf; mktexlsr' as well to generate index of the local 
TEXMF tree.

Similarly, other classes and packages can be also installed in
the local TEXMF tree.

EXAMPLE THESIS
--------------

The directory `ExampleDistribution' contains a sample thesis for the purpose of demonstrating the usage and output of the various
parameters. The files are the same as in the sample_ndthesis.tar.gz distribution by Jeff Squyeres and D. A.
Peterson, but modified for the nddiss2e class.

Thanks to D. A. Peterson and others.

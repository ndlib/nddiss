nddiss
======

`nddiss` is a LaTeX package providing a document class for formatting doctoral
dissertations submitted to the University of Notre Dame's Graduate School.

Copies of this package can be found in many places:

 * GitHub: https://github.com/ndlib/nddiss
 * CTAN (slightly behind the github version): https://ctan.org/pkg/nddiss

This package belongs to the Notre Dame community.
Please feel free to send improvements, suggestions, or bug reports to

 * Shari Hill Sweet, shill2@nd.edu
 * Don Brower, dbrower@nd.edu


# Usage

Look at the `example` directory to see a template of how to use the class.
The [manual](nddiss2e.pdf) has more information and details.


# Installation

Download the files by choosing "Clone or download" and then choosing "Download ZIP". Copy the files `nddiss2e.cls` and `nddiss2e.bst` files into the same directory as your LaTeX source file.

Beware! If seems `nddiss2e` is already installed on your machine, it is
probably an outdated version from 2005. Please use the current version.


# This Repository

The `Makefile` contains all the logic to process the master source file, `nddiss2e.dtx`.
The `nddiss2e.cls`, `nddiss2e.pdf`, and `template.tex` files are generated from the `dtx` file.
Run `make` to regenerate everything.
These derivatives are checked into the repo to make it easier for people to access and download them.

The `example` directory provides a template showing how to use the package.
The `handout` directory is a single-page getting started guide.


# Other Resources

The Notre Dame Graduate school has [formatting resources and the current standard](http://graduateschool.nd.edu/resources-for-current-students/dt/dt-resources/).


# Authors and History

This class file was created by Sameer Vijay, following the Spring 2004 Graduate School formatting guidelines.
Later Megan Patnott updated it to follow the Spring 2013 guidelines.

The class is based off of an older style file created by D. A. Peterson, Jeff Squyeres, and others.
The example files are from the `sample_ndthesis.tar.gz` by Jeff Squyeres and D. A. Peterson, suitably modified for the nddiss2e class.


# License

This file may be distributed and/or modified under the conditions of the LaTeX
Project Public License, either version 1.2 of this license or (at your option)
any later version. The latest version of this license can be found at http://www.latex-project.org/lppl.txt.

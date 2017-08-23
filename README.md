nddiss
======

`nddiss` is a LaTeX package providing a document class for formatting doctoral
dissertations submitted to the University of Notre Dame's Graduate School.

Copies of this package can be found in many places:

 * CTAN: https://ctan.org/pkg/nddiss
 * GitHub: https://github.com/ndlib/nddiss
 * Notre Dame Graduate School website: http://graduateschool.nd.edu/resources-for-current-students/dt/dt-resources/

Please send any improvements, suggestions, or bug reports to

 * Shari Hill Sweet, shill2@nd.edu
 * Don Brower, dbrower@nd.edu


# Usage

Easiest way to begin is to start with either the file `example/example.tex` or the template `template.tex`.
The [manual](nddiss2e.pdf) has a lot more information.

The [example](example) directory contains a sample thesis demonstrating the usage of this package.

[comment]: # (The files are the same as in the `sample_ndthesis.tar.gz` distribution by Jeff Squyeres)
[comment]: # (and D. A. Peterson, but modified for the nddiss2e class.)


# Installation

The easiest way to install this package is to copy the `nddiss2e.cls` and
`nddiss2e.bst` files into the same directory as your LaTeX source file.

Beware! If seems `nddiss2e` is already installed on your machine, it is
probably an outdated version from 2005. Please use the current version.


# This Repository

The `Makefile` contains all the logic to process the master source file, `nddiss2e.dtx`.
The `nddiss2e.cls`, `nddiss2e.pdf`, and `template.tex` files are generated from the `dtx` file.
Run `make` to regenerate everything.
These derivatives are checked into the repo to make it easier for people to access and download them.


# Authors

The original version, created by Sameer Vijay, follows the Spring 2004 formatting guidelines.
Later, Megan Patnott updated it to follow the Spring 2013 guidelines.

This class is based off of an older style file created by D. A. Peterson, Jeff Squyeres, and others.


# License

This file may be distributed and/or modified under the conditions of the LaTeX
Project Public License, either version 1.2 of this license or (at your option)
any later version. The latest version of this license can be found at http://www.latex-project.org/lppl.txt.

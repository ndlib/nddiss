# FAQ

Before looking at these, have you read the [manual](nddiss2e.pdf)? Most of these answers are explained in more detail in there.

## How can I change the date that appears on the title page?

 Use the `\degdate{}` macro before calling `\maketitlepage`.
 For example:

~~~latex
\degdate{April 2020}
\maketitle
~~~

## How do I add a preface or other front matter section that shows up in the table of contents?

Use the `preface` environment. By default the section is titled "Preface". You can change it using the

~~~latex
\begin{preface}
This work includes many special things...
\end{preface}
~~~

## How do I get NDDiss to work with the APA citation package `apacite`?

 Add `nonatbib` to the document class options at the beginning of your document
and use a `bibliographystyle{apacite}` for your bibliography.

example: `\documentclass[final,nonatbib]{nddiss2e}`

## How do I get my table captions to work right with multipage tables?

Use the longtable environment. The class defines its own that conforms to the Graduate School requirements. Make sure you do not have any `\usepackages` for `longtable` or `caption`. Format your captions analogous to the following:

~~~latex
\begin{longtable}{lll}
 \caption{MY VERY LONG TABLE\label{tab:long}}\\
 Name & X & Y \\
 \hline
 \endfirsthead
 \caption{} \\
 Name  & X & Y \\
 \hline
 \endhead
 First data point & 0 & 0 \\
 Second           & 0 & 1 \\
 ...
\end{longtable}
~~~

## I was told my table and figure captions are messed up.

Usually this is because you are using a package that conflicts with the style. The main offenders is the `caption` package, but there can be others.

(The nddiss2e style is pretty old, and could be updated to use the many packages that have been developed over the last 20 years. If you have the time and ability, I would love to accept updates for it.)

## My longtable captions need to be in UPPERCASE.


## My title page is actually two pages since I have two advisors and my program name takes two lines.

This is a hard thing to adjust since the long department name takes two lines and there isn’t space on the page for an extra line.
Since the title page format is baked-into the class, you need to adjust the spacing parameters in the class file.

In the nddiss2e.cls replace these consecutive lines (lines 393-395):
~~~latex
\skip2=1.7\double@skip
\skip3=2.7\double@skip
\skip4=36pt
~~~

With these:
~~~latex
\skip2=1.2\double@skip
\skip3=2.0\double@skip
\skip4=16pt
~~~



## How do I get my citations to be numbered in the order they are cited?

By default the bibliography is sorted by author last name so it is easier for others to scan your bibliography.
But you can sort the bibliography by the order each citation is first used with the command `\bibliographystyle{nddiss2enosort}`.
Doing this will have the first citation you use to have number 1, and so on.
It is recommended to use the `notoccite` package to start the numbering after the front matter sections.


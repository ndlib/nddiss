%%
%% This is file `nddiss2e.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% nddiss2e.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%%  Copyright (C) 2004-2005 Sameer Vijay
%% 
%%  This file may be distributed and/or modified under the
%%  conditions of the LaTeX Project Public License, either
%%  version 1.2 of this license or (at your option) any later
%%  version. The latest version of this license is in
%%     http://www.latex-project.org/lppl.txt
%% 
%% 
%% ==============================================================
%% 
%% Notre Dame's Dissertation document class by Sameer Vijay
%% that adheres to the University of Notre Dame guidelines
%% published in Spring 2004.
%% 
%% Please send any improvements/suggestions to :
%%     Shari Hill, Graduate Reviewer.
%%     shill2@nd.edu
%% 
%% For documentation on how to use nddiss2e class, process the
%% file nddiss2e.dtx through LaTeX.
%% 
%% ==============================================================
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{nddiss2e}
    [2016/10/16 v3.2016%
     Notre Dame Dissertation document class]
\providecommand{\dissfileversion}{3.2017.2}
\providecommand{\dissfiledate}{2017/05/09}
\newif\ifdiss@draft             \diss@drafttrue
\newif\ifdiss@review            \diss@reviewfalse
\newif\ifdiss@final             \diss@finalfalse
\newif\ifinfo@page              \info@pagetrue
\newif\ifadvisors@two           \advisors@twofalse
\newif\ifdiss@dedication        \diss@dedicationfalse
\newif\ifnum@refs               \num@refstrue
\newif\ifnatbib@refs            \natbib@refstrue
\newif\ifcentered@chaptitle     \centered@chaptitletrue
\newif\if@ltfirstcaption
\DeclareOption{draft}{
    \setlength\overfullrule{5pt}
    \typeout{DRAFT MODE}\typeout{}\info@pagefalse%
    \diss@drafttrue\diss@reviewfalse\diss@finalfalse
    \PassOptionsToClass{letterpaper,oneside,draft}{book} }
\DeclareOption{review}{
    \typeout{REVIEW MODE}\typeout{}\info@pagetrue%
    \diss@draftfalse\diss@reviewtrue\diss@finalfalse
    \PassOptionsToClass{12pt,letterpaper,oneside,final}{book} }
\DeclareOption{final}{
    \setlength\overfullrule{0pt}
    \typeout{FINAL MODE}\typeout{}\info@pagetrue%
    \diss@draftfalse\diss@reviewfalse\diss@finaltrue
    \PassOptionsToClass{12pt,letterpaper,oneside,final}{book} }
\DeclareOption{numrefs}{
  \typeout{NUMBERED REFERENCES}\num@refstrue}
\DeclareOption{textrefs}{
  \typeout{TEXTUAL REFERENCES}\num@refsfalse}
\DeclareOption{nonatbib}{
  \typeout{NO NATBIB}\natbib@refsfalse}
\DeclareOption{nocenter}{\centered@chaptitlefalse}
\DeclareOption{openbib}{%
   \PassOptionsToPackage{openbib}{natbib}
}
\DeclareOption{sort}{%
    \PassOptionsToPackage{sort}{natbib}
}
\DeclareOption{compress}{%
    \PassOptionsToPackage{compress}{natbib}
}
\DeclareOption{sort&compress}{%
    \PassOptionsToPackage{sort&compress}{natbib}
}
\DeclareOption{twoadvisors}{\typeout{TWO ADVISORS}\typeout{}%
    \advisors@twotrue}
\DeclareOption{10pt}{%
 \ifdiss@draft%
  \PassOptionsToClass{10pt}{book}%
 \else%
  \OptionNotUsed%
  \ClassWarningNoLine{nddiss2e}%
    {Font size 10pt not allowed; using 12pt}%
 \fi%
}
\DeclareOption{11pt}{%
 \ifdiss@draft%
  \PassOptionsToClass{11pt}{book}%
 \else%
  \OptionNotUsed%
  \ClassWarningNoLine{nddiss2e}%
    {Font size 11pt not allowed; using 12pt}%
 \fi
}
\DeclareOption{12pt}{%
   \PassOptionsToClass{12pt}{book}%
}
\DeclareOption{noinfo}{\info@pagefalse}
\DeclareOption{twoside}{\typeout{TWO SIDED DOCUMENT}%
  \PassOptionsToClass{twoside}{book} }%
\DeclareOption*{\ClassWarning{nddiss2e}%
    {UnknownOption `\CurrentOption'} }%
\ProcessOptions\relax
\LoadClass{book}
\RequirePackage{ifthen,exscale,etoolbox}
\RequirePackage{ifpdf,ifluatex,ifxetex}
\ifboolexpr{bool{pdf} or bool{xetex} or bool{luatex}}{}{%
  \ClassError{nddiss2e}{%
      PDF Output is required to support the PDF/A format.
  }{DVI output is not supported. Use pdflatex to generate the dissertation.}
}
\RequirePackage[hyphens]{url}
\RequirePackage[a-2b]{pdfx}
\RequirePackage{longtable}
\RequirePackage{threeparttable}
\RequirePackage[flushleft]{threeparttablex}
\RequirePackage{xspace}
\RequirePackage{indentfirst}
\RequirePackage{tabularx}
\RequirePackage{enumerate}
\RequirePackage{latexsym}
\RequirePackage{textcase}
\ifboolexpr{bool{pdf} or bool{xetex} or bool{luatex}}{%
  \RequirePackage{epsfig}
  \RequirePackage{color}
  \RequirePackage{graphicx}
  \AtBeginDocument{
  \pdfadjustspacing=1
  }
}{%
  \RequirePackage[dvips]{epsfig}
  \RequirePackage[dvips]{color}
  \RequirePackage[dvips]{graphicx}
}
\ifnatbib@refs
  \ifnum@refs
    \RequirePackage[numbers]{natbib}
  \else
    \RequirePackage[authoryear]{natbib}
  \fi
\fi
\AtBeginDocument{
\RequirePackage{amsmath}
\RequirePackage{float}
\RequirePackage{booktabs}
\RequirePackage{rotating}
\RequirePackage{url}
\RequirePackage[doublespacing]{setspace}[2000/12/01]
\ifboolexpr{bool{pdf} or bool{xetex} or bool{luatex}}{%
  \ifluatex
    \RequirePackage[luatex]{pdflscape}
  \else
    \ifxetex
      \RequirePackage[xetex]{pdflscape}
    \else
      \ifpdf
        \RequirePackage{pdflscape}
      \fi
    \fi
  \fi
  % cannot use RequirePackage since pdfx also includes hyperref
  \hypersetup{
            plainpages=false,
            pdfpagelabels,
            bookmarks=true,%
            bookmarksnumbered=true,%
            linktocpage=true,%
            breaklinks=true,%
            bookmarkstype=toc,%
            colorlinks=false,%
            pdfpagemode=UseOutlines}
}{}
}
\RequirePackage{metalogo}
\AtBeginDocument{
\pagestyle{plain}
\normalspacing
\typeout{Pagestyle and spacing normal}
}
\newcommand{\normalspacing}{\doublespacing}
\newcommand\single@baselinestretch{0.979}
\newcommand\double@baselinestretch{1.625}
\newlength{\usedtextsize}
\setlength{\usedtextsize}{\f@size pt}
\newlength{\single@skip}
\setlength{\single@skip}{\single@baselinestretch \usedtextsize}
\newlength{\double@skip}
\setlength{\double@skip}{\double@baselinestretch \usedtextsize}
\setlength{\footnotesep}{\double@skip}
\setlength{\hoffset}{0pt}
\setlength{\voffset}{0pt}
\setlength{\topmargin}{-32pt}
\setlength{\headsep}{20pt}
\setlength{\marginparwidth}{47pt}
\setlength{\marginparsep}{7pt}
\setlength{\textheight}{648pt}
\setlength{\textwidth}{432pt}
\setlength{\oddsidemargin}{36pt}
\setlength{\evensidemargin}{36pt}
\setlength{\footskip}{30pt}
\setlength{\floatsep}{30pt}
\setlength{\intextsep}{50pt}
\newcommand{\clearemptydoublepage}{\newpage{\pagestyle{empty}%
    \cleardoublepage}}
\DeclareRobustCommand{\nddiss}{%
        \textsf{{\scshape nd}diss}\kern-0.03em%
        2$_\mathsf{\textstyle\varepsilon}$}
\renewcommand{\title}[1]{\def\@title{#1}}
\newcommand{\work}[1]{\def\@work{#1}}
\newcommand{\degaward}[1]{\def\@degaward{#1}}
\newcommand{\advisor}[1]{\def\@advisor{#1}}
\ifadvisors@two
    \newcommand{\secondadvisor}[1]{\def\@secondadvisor{#1}}
\fi
\newcommand{\department}[1]{\def\@department{#1}}
\newcommand{\degdate}[1]{\def\@degdate{#1}}
  \degdate{\ifcase\month\or
    January\or February\or March\or April\or May\or June\or
    July\or August\or September\or October\or November\or December\fi
    \space\number\year}
  \title{}
  \author{}
  \work{}
  \degaward{}
  \advisor{}
  \ifadvisors@two \secondadvisor{} \fi
  \department{}
\DeclareRobustCommand{\@infopage}{
  \thispagestyle{empty}
  \null\vspace*{\single@skip}
  \begin{center}
    This \@work\space \\ entitled \\ \MakeTextUppercase{\@title} \\
        typeset with \nddiss\ v%
      \dissfileversion\ (\dissfiledate) %
      on \today\space for\\
  \@author\\
  \end{center}

   \normalfont\normalsize\singlespacing

   \noindent This \LaTeXe\space classfile conforms to the
   University of Notre Dame style guidelines as of Fall
   2012. However it is still possible to generate a
   non-conformant document if the instructions in the class
   file documentation are not followed!

   \begin{center}
   \begin{minipage}{0.75\textwidth}
   \noindent Be sure to refer to the published Graduate
   School guidelines at \url{http://graduateschool.nd.edu}
   as well. Those guidelines override everything mentioned
   about formatting in the documentation for
   this \nddiss\space class file.
   \end{minipage}
   \end{center}

  \noindent\itshape This page can be disabled by
  specifying the ``{\upshape\ttfamily noinfo}'' option to the class invocation.
  \upshape
(i.e.,{\ttfamily{\textbackslash}documentclass[\ldots,noinfo]\{nddiss2e\}}
)
  \begin{center}
    {\bfseries\large\singlespacing This page is \slshape NOT
    \upshape part of the dissertation/thesis. It should be disabled before
   making final, formal submission, but should be included in the version
   submitted for format check.}
  \end{center}
    \normalsize\normalfont
    \nddiss\ documentation can be found at these locations:
  \begin{center}
    \url{http://graduateschool.nd.edu} \\
    \url{https://ctan.org/pkg/nddiss}
  \end{center}

\vfill
\normalfont\normalsize\normalspacing\eject}
\renewcommand{\maketitle}{
  \ifinfo@page\@infopage\else\relax\fi%
  \clearemptydoublepage
  \normalfont\normalsize\normalspacing
  \begin{titlepage}%
\ifthenelse{\equal{\@work}{}}{\ClassError{nddiss2e}%
  {The \protect\work\space macro is undefined.\MessageBreak
        The title page may be incorrectly formatted.}%
  {Specify \protect\work\space as Dissertation or Thesis}}{\relax}
\ifthenelse{\equal{\@degaward}{}}{\ClassError{nddiss2e}%
  {The \protect\degaward\space macro is undefined.\MessageBreak
        The title page may be incorrectly formatted.}%
  {Specify \protect\degaward\space. It defines the awarded degree%
         (Ph.D., M.S., etc.)}}{\relax}
\ifthenelse{\equal{\@advisor}{}}{\ClassError{nddiss2e}%
  {The \protect\advisor\space macro is undefined.\MessageBreak
        The title page may be incorrectly formatted.}%
  {Spepcify \protect\advisor\space It is who signs your walking papers!}}{\relax}
\ifthenelse{\equal{\@department}{}}{\ClassError{nddiss2e}%
  {The \protect\department\space macro is undefined.\MessageBreak
        The title page may be incorrectly formatted.}%
  {Specify which \protect\department\space is awarding your degree?}}{\relax}
\ifadvisors@two
  \ifthenelse{\equal{\@secondadvisor}{}}{\ClassError{nddiss2e}%
  {The \protect\secondadvisor\space macro is undefined.\MessageBreak
            The title page may be incorrectly formatted.}%
  {Use \protect\secondadvisor\space for your second advisor}}{\relax}
\fi
\skip1=2.1\double@skip
\skip2=1.7\double@skip
\skip3=2.7\double@skip
\skip4=36pt
 \ifadvisors@two
   \skip1=1.6\double@skip
 \else\relax
 \fi
 \setbox0=\vbox{\MakeTextUppercase{\@title}}
 \ifdim \ht0 > 3\double@skip
   \advance \skip1 -.75\double@skip
 \else
   \ifdim \ht0 > 2\double@skip
     \advance\skip1 -.5\double@skip
   \else
     \ifdim \ht0 > \double@skip
       \advance\skip1 -.25\double@skip
     \fi
   \fi
 \fi
 \setbox1=\vbox{\@degaward}
 \ifdim \ht1 > 2\double@skip
   \advance\skip1 -.5\double@skip
 \else
   \ifdim \ht1 > \double@skip
     \advance \skip1 -.25\double@skip
   \else
     \relax
   \fi
 \fi
  \ifadvisors@two
    \ifdim \ht0 > 3\double@skip
      \ifdim \ht1 > \double@skip
        \advance \skip4 -.675\double@skip
        \advance \skip2 -.4\double@skip
        \advance \skip1 .25\double@skip
      \else \relax
      \fi
    \else
      \ifdim \ht0 > 2\double@skip
        \ifdim \ht1 > 2\double@skip
          \advance \skip2 -.4\double@skip
          \advance \skip1 .1\double@skip
        \else \relax
        \fi
      \else \relax
      \fi
    \fi
  \else \relax
  \fi
  \null\vspace*{\skip4}
  \begin{center}%
    \MakeTextUppercase{\@title} \par%
    \vskip\skip1%
    A \@work \par%
    \vskip\skip1%
      Submitted to the Graduate School \\
          of the University of Notre Dame \\
          in Partial Fulfillment of the Requirements \\
          for the Degree of \par
        \vskip\skip1%
        \@degaward%
        \vskip\skip1%
        by \\%
    \@author
     \ifadvisors@two
        \vskip\skip2
        \hspace*{2.75in}\underline{\hspace{2.75in}}\\%
        \hspace*{2.75in}\@advisor, Co-Director\\
     \else
        \vskip\skip3
        \hspace*{2.75in}\underline{\hspace{2.75in}}\\%
        \hspace*{2.75in}\@advisor, Director\\
     \fi%
\ifadvisors@two %
      \vskip\double@skip%
        \hspace*{2.75in}\underline{\hspace{2.75in}}\\%
        \hspace*{2.75in}\@secondadvisor, Co-Director\\
\fi
  \vskip\skip1%
  Graduate Program in \@department \\%
  Notre Dame, Indiana \\
  \@degdate
  \end{center}
  \end{titlepage}%
}
\newenvironment{copyrightpage}{%
  \clearemptydoublepage
  \typeout{Copyright page}
  \pagestyle{empty}
  \null\vfil
  \begin{center}\normalspacing}%
{ \end{center}\vfil\null \clearpage }
\newcommand{\@copyrightyear}{\the\year}
\newcommand{\@copyrightholder}{\@author}
\newcommand{\@copyrightlicense}{All Rights Reserved}
\newcommand{\copyrightyear}[1]{\renewcommand{\@copyrightyear}{#1}}
\newcommand{\copyrightholder}[1]{\renewcommand{\@copyrightholder}{#1}}
\newcommand{\copyrightlicense}[1]{\renewcommand{\@copyrightlicense}{#1}}
\newcommand{\makecopyright}{%
  \ifdiss@final
    \begin{copyrightpage}
    \normalfont\normalsize
    \copyright\space Copyright by \\
    \@copyrightholder \\
    \@copyrightyear\\
    \@copyrightlicense \\[10mm]
    \end{copyrightpage}
  \fi
}%
\newcommand{\makepublicdomain}{%
  \ifdiss@final
    \begin{copyrightpage}
       This document is in the public domain.
    \end{copyrightpage}
  \fi
}%
\providecommand{\abstractname}{Abstract}
\providecommand{\dedicationname}{\mbox{}}
\providecommand{\prefacename}{Preface}
\providecommand{\acknowledgename}{Acknowledgments}
\providecommand{\symbolsname}{Symbols}
\renewcommand{\tablename}{Table}
\renewcommand{\figurename}{Figure}
\renewcommand{\partname}{Part}
\renewcommand{\chaptername}{Chapter}
\renewcommand{\appendixname}{Appendix}
\renewcommand{\contentsname}{Contents}
\renewcommand{\listfigurename}{Figures}
\renewcommand{\listtablename}{Tables}
\renewcommand{\bibname}{Bibliography}
\renewcommand{\indexname}{Index}
\newenvironment{abstract}{%
  \ifboolexpr{bool{pdf} or bool{xetex} or bool{luatex}}{%
     \pdfbookmark[0]{\abstractname}{abstract}%abstract.0
  }{}
  \typeout{Abstract page(s)}
  \renewcommand{\@oddfoot}{\@empty}
  \renewcommand{\@evenfoot}{\@empty}
  \let\@evenhead\@oddhead
  \renewcommand{\@oddhead}{\hfil{\upshape\@author}}
  \titlepage
  \null
  \begin{center}
  \vspace*{36pt}
  {\normalsize\mdseries \normalspacing
     \MakeTextUppercase{\@title} \\[3.5ex]
     \normalsize\abstractname \\ by \\ \@author\space}%
   \@endparpenalty \@M
   \end{center}\par}%
{\par\vfil\null\endtitlepage}
\newenvironment{dedication}{%
  \global\diss@dedicationtrue
  \typeout{Dedication page}
  \chapter*{\dedicationname}%
  \thispagestyle{plain}
  \setcounter{page}{2}
  \null\centering}
{\par\null\clearpage}%
\renewcommand\tableofcontents{%
  \ifdiss@dedication\relax\else\setcounter{page}{2}\fi
  \chapter*{\contentsname}%
  \ifboolexpr{bool{pdf} or bool{xetex} or bool{luatex}}{%
      \pdfbookmark[0]{\contentsname}{contents}%contents.0
  }{}
  \singlespacing
  \@starttoc{toc}%
  \normalspacing
  }
\renewcommand\listoffigures{%
    \chapter*{\listfigurename}%
    \addcontentsline{toc}{chapter}{\listfigurename}%
    \typeout{List of figures - \listfigurename}
    \singlespacing
    \@starttoc{lof}%
    \normalspacing
}
\renewcommand\listoftables{%
    \chapter*{\listtablename}%
    \addcontentsline{toc}{chapter}{\listtablename}%
    \typeout{List of tables - \listtablename}
    \singlespacing
    \@starttoc{lot}%
    \normalspacing
}
\newenvironment{preface}{%
  \typeout{Preface page}
  \chapter*{\prefacename}
  \addcontentsline{toc}{chapter}{\prefacename}%
}%
{\par\null\clearpage}%
\newenvironment{acknowledge}{%
  \typeout{Acknowledgment page}
  \chapter*{\acknowledgename}
  \addcontentsline{toc}{chapter}{\acknowledgename}%
}%
{\par\null\clearpage}%
\newcommand\unnumchapter[1]{%
  \chapter*{#1}%
  \addcontentsline{toc}{chapter}{#1}}
\newcommand{\sym}[2]{\ensuremath{#1} & #2 \\}
\newenvironment{symbols}[1][rl]{%
  \typeout{Symbols page}
  \chapter*{\symbolsname}%
  \addcontentsline{toc}{chapter}{\symbolsname}%
  \begin{center}\begin{longtable}{#1}}%
{\end{longtable}\end{center}\par\null}
\def\@chapter[#1]#2{
  \ifnum \c@secnumdepth >\m@ne
  \if@mainmatter
    \refstepcounter{chapter}%
    \typeout{\MakeTextUppercase{\@chapapp\space\thechapter.}}%
    \addcontentsline{toc}{chapter}%
      {{\@chapapp\ \thechapter: #1}}%
    \else
      \addcontentsline{toc}{chapter}{#1}%
    \fi
  \else
     \addcontentsline{toc}{chapter}{#1}%
  \fi
  \chaptermark{#1}%
  \addtocontents{lof}{\protect\addvspace{10\p@}}%
  \addtocontents{lot}{\protect\addvspace{10\p@}}%
  \@makechapterhead{\MakeTextUppercase{#2}}%
  \@afterheading }%
\def\@part[#1]#2{%
  \ifnum \c@secnumdepth >-2\relax
    \refstepcounter{part}%
    \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
  \else
    \addcontentsline{toc}{part}{#1}%
  \fi
  \markboth{}{}%
  {\centering
   \interlinepenalty \@M
   \normalfont
   \ifnum \c@secnumdepth >-2\relax
     \normalsize\mdseries \partname\nobreakspace\thepart
     \par
     \vskip 20\p@
   \fi
  \normalsize\mdseries \MakeTextUppercase{#2}\par}%
  \@endpart}
\def\@spart#1{%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \normalsize\mdseries #1\par}%
    \@endpart}
\renewcommand{\@makechapterhead}[1]{%
  \vspace*{30pt}%
  {\parindent \z@ \raggedright
    \ifnum \c@secnumdepth >\m@ne
      \normalfont\normalsize%
      \if@mainmatter
        \ifcentered@chaptitle\center\else\relax\fi%
        \MakeTextUppercase{\@chapapp{} \thechapter}\par\nobreak
      \fi
    \fi
    \interlinepenalty\@M
    \ifcentered@chaptitle\center\else\relax\fi%
    \mdseries{#1}\par\nobreak
    \vskip 30\p@
  }}
\renewcommand{\@makeschapterhead}[1]{%
  \vspace*{30pt}%
  {\parindent \z@ \raggedright
     \normalfont\normalsize%
     \interlinepenalty\@M
     \ifcentered@chaptitle\center\else\relax\fi
     \mdseries{\MakeTextUppercase{#1}}\par\nobreak
     \vskip 30\p@
  }}
\renewcommand\section{\suppressfloats[t]%
    \@startsection {section}{1}{\z@}%
    {-4.2ex \@plus -1ex \@minus -.2ex}%
    {1.8ex \@plus.2ex}%
    {\normalfont\normalsize\mdseries} }
\renewcommand\subsection{\suppressfloats[t]%
    \@startsection{subsection}{2}{\z@}%
    {-3.9ex\@plus -1ex \@minus -.2ex}%
    {1.2ex \@plus .2ex}%
    {\normalfont\normalsize\mdseries} }
\renewcommand\subsubsection{\suppressfloats[t]%
    \@startsection{subsubsection}{3}{\z@}%
    {-3.9ex\@plus -1ex \@minus -.2ex}%
    {1.2ex \@plus .2ex}%
    {\normalfont\normalsize\mdseries} }
\renewcommand\paragraph{%
    \@startsection{paragraph}{4}{\z@}%
    {3.9ex \@plus1ex \@minus.2ex}%
    {-1em}%
    {\normalfont\normalsize\mdseries} }
\renewcommand\subparagraph{%
    \@startsection{subparagraph}{5}{\parindent}%
    {3.9ex \@plus1ex \@minus .2ex}%
    {-1em}%
    {\normalfont\normalsize\mdseries} }
\renewcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \setlength\@tempdima{1.5em}%
    \begingroup
      {\leavevmode
       \@dottedtocline{1}{0pt}{\@tempdima}{#1}{#2}
      }\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\renewcommand*{\l@chapter}[2]{%
  \addpenalty{-\@highpenalty}%
  \setlength\@tempdima{1.5em}%
  \begingroup \leavevmode
  \@dottedtocline{1}{0pt}{\@tempdima}{#1}{#2}
  \par
  \penalty\@highpenalty
  \endgroup
}
\addtocounter{secnumdepth}{1}
\addtocounter{tocdepth}{1}
\renewcommand{\thesubsubsection}{%
   \thesubsection.\arabic{subsubsection}}
\renewenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                 \singlespacing
               \item\relax}
               {\endlist}
\let\realitemize\itemize
\let\endrealitemize\enditemize
\renewenvironment{itemize}
          {\realitemize
            \singlespacing}
          {\endrealitemize
            \doublespacing}
\let\realenumerate\enumerate
\let\endrealenumerate\endenumerate
\renewenvironment{enumerate}[1][1.]
          {\realenumerate[#1]
            \singlespacing}
          {\endrealenumerate
            \doublespacing}
\let\realdescription\description
\let\endrealdescription\enddescription
\renewenvironment{description}
          {\realdescription
            \singlespacing}
          {\endrealdescription
            \doublespacing}
\setlength\abovecaptionskip{20\p@}
\newlength\capwidth
\setlength{\capwidth}{0.90\textwidth}
\newlength\abovetableskip
\newlength\belowtableskip
\newlength\abovefigureskip
\newlength\belowfigureskip
\setlength\abovetableskip\belowcaptionskip
\setlength\belowtableskip\abovecaptionskip
\setlength\abovefigureskip\abovecaptionskip
\setlength\belowfigureskip\belowcaptionskip
\renewenvironment{figure}{%
   \setlength{\abovecaptionskip}{\abovefigureskip}
   \setlength{\belowcaptionskip}{\belowfigureskip}
   \let\@makecaption\@makefigurecaption
   \@float{figure}}%
   {%
   \addtocontents{lof}{ {\vskip 0.4em} }%
   \end@float%
}
\long\def\@makefigurecaption#1#2{%
  \vskip\abovecaptionskip
  \begin{center}
  \parbox{\capwidth}{
    \centering\singlespacing
    {#1}. {#2}%\par
  \vskip\belowcaptionskip\normalspacing }%
  \end{center}
}%
\renewenvironment{table}[1][tbp]{%
   \setlength{\abovecaptionskip}{\abovetableskip}
   \setlength{\belowcaptionskip}{\belowtableskip}
   \renewcommand{\arraystretch}{\double@baselinestretch}
   \let\scaption\caption%
   \renewcommand*{\caption}[2][]{%
     \ifthenelse{\equal{##1}{}}{%
       \def\shortcaption{##2}%
     }{%
       \def\shortcaption{##1}%
     }%
     \scaption[\shortcaption]{\MakeTextUppercase{##2}}%
   }%
   \let\@makecaption\@maketablecaption
   \@float{table}[#1]%
   \singlespacing%
   }%
   {%
   \addtocontents{lot}{ {\vskip 0.4em} }%
   \end@float%
}
\long\def\@maketablecaption#1#2{
  \vskip\abovecaptionskip
  \begin{center}
    \makebox[\linewidth]{
      \parbox{\capwidth}{
      \centering\normalspacing
      \MakeTextUppercase{#1}\\[\single@skip]
      {#2}%\par
    \vskip\belowcaptionskip }%
    }%
  \end{center}
}
\renewcommand\longtable{%
   \singlespacing
   \renewcommand{\arraystretch}{\double@baselinestretch}
   \begingroup
   \@ltfirstcaptiontrue
   \@ifnextchar[\LT@array{\LT@array[x]}}
\renewcommand\endlongtable{%
  \crcr
  \noalign{%
    \let\LT@entry\LT@entry@chop
    \xdef\LT@save@row{\LT@save@row}}%
  \LT@echunk
  \LT@start
  \unvbox\z@
  \LT@get@widths
  \if@filesw
    {\let\LT@entry\LT@entry@write\immediate\write\@auxout{%
      \gdef\expandafter\noexpand
        \csname LT@\romannumeral\c@LT@tables\endcsname
          {\LT@save@row}}}%
  \fi
  \ifx\LT@save@row\LT@@save@row
  \else
    \LT@warn{Column \@width s have changed\MessageBreak
             in table \thetable}%
    \LT@final@warn
  \fi
  \endgraf\penalty -\LT@end@pen
  \addtocontents{lot}{ {\vskip 0.4em} }%
  \endgroup
  \global\@mparbottom\z@
  \pagegoal\vsize
  \endgraf\penalty\z@\addvspace\LTpost
  \ifvoid\footins\else\insert\footins{}\fi
}
\setlength{\LTcapwidth}{\capwidth}
\renewcommand\LT@makecaption[3]{%
  \LT@mcol\LT@cols c{\hbox to\z@{\hss\parbox[t]\LTcapwidth{%
  \vskip\abovetableskip%
    \centering\normalspacing
    \if@ltfirstcaption
    #1{\MakeTextUppercase{#2} }\\[\single@skip]
    \MakeTextUppercase{#3}\par
    \else%
    #1{\MakeTextUppercase{#2 (continued)} }\par
    \fi
  \global\@ltfirstcaptionfalse
  \endgraf\vskip\belowtableskip}%
  \hss}}}
\newcommand\timenow{%
  \@tempcnta=\time \divide\@tempcnta by 60 \number\@tempcnta:\multiply
  \@tempcnta by 60 \@tempcntb=\time \advance\@tempcntb by -\@tempcnta
  \ifnum\@tempcntb <10 0\number\@tempcntb\else\number\@tempcntb\fi}
\newcommand{\diss@header}{%
    \ifdiss@review Review \else Draft \fi document [\today\/ at \timenow\/]
    }%
\ifdiss@final
    \renewcommand{\ps@plain}{
        \renewcommand{\@oddhead}{\@empty}
        \renewcommand{\@oddfoot}{\hfil\thepage\hfil}
        \let\@evenhead\@oddhead
        \let\@evenfoot\@oddfoot
    }%
\else
    \renewcommand{\ps@plain}{
        \renewcommand{\@oddhead}{\framebox[\textwidth]{
           \centering\footnotesize\tt\diss@header}}%
        \renewcommand{\@oddfoot}{\hfil\textrm{\thepage}\hfil}
        \let\@evenhead\@oddhead
        \let\@evenfoot\@oddfoot
    }%
    \renewcommand{\ps@empty}{
        \renewcommand{\@oddhead}{\framebox[\textwidth]{
           \centering\footnotesize\tt\diss@header}}%
        \renewcommand{\@oddfoot}{\@empty}
        \let\@evenhead\@oddhead
        \let\@evenfoot\@oddfoot
    }%
\fi
\ifnatbib@refs
  \renewcommand{\bibsection}{
    \chapter*{\bibname}%
    \addcontentsline{toc}{chapter}{\bibname}%
  }%
\fi
\ifnatbib@refs
  \renewcommand{\bibfont}{\singlespacing}
  \ifnum@refs
    \renewcommand{\@biblabel}[1]{\hfill#1.\hfill}
  \fi
\fi
\ifdiss@final
\AtEndDocument{
    \vfill
    \centering\singlespacing
    \framebox[0.85\textwidth]{
    \begin{minipage}{0.80\textwidth}\footnotesize%
    \centering \itshape This document was prepared \& typeset with
    \upshape
    \ifluatex
      \LuaLaTeX
    \else\ifxetex
      \XeLaTeX
    \else\ifpdf
      pdf\LaTeX
    \else
      \LaTeXe
    \fi\fi\fi
    \itshape , and
    formatted with \upshape\nddiss\xspace\itshape classfile
    (v\dissfileversion [\dissfiledate])
    \end{minipage} }
    \clearpage}
\else\relax\fi
%%
%%
\endinput
%%
%% End of file `nddiss2e.cls'.

\def\currversion{October 6, 2008}
%\def\currversion{May 6, 2008}
%\def\currversion{November 9, 2007}
%\def\currversion{October 31, 2007}
%\def\currversion{July 29, 2007}
%\def\currversion{April 15, 2007}

  %****************************************************************%
  %*                                                              *%
  %*     Prepared by Amy Hendrickson, TeXnology Inc.              *%
  %*     Copyright (C) 2004 by Amy Hendrickson, TeXnology Inc.,   *%
  %*     All rights reserved.                                     *%
  %*                                                              *%
  %*     TeXnology Inc.: 617 738-8029                             *%
  %*                     amyh@texnology.com                       *%
  %*                                                              *%
  %****************************************************************%

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %% Macro Contents:

  %% Dimensions
  %% Global Parameters
  %% LaTeX2.09/LaTeX2e Switch, font family declarations
  %% Listing
  %% Title Pages, Preface, Introduction
  %% Part, Chapter, and Appendix Commands 
  %% Counters
  %% Header Level Names
  %% Section Commands 
  %% Verse, Quote, Extract 
  %% Math
  %% Figure and Table Captions 
  %% Table of Contents, List of Figures, LOT 
  %% Bibliography, References 
  %% Footnotes
  %% Running Heads
  %% Fonts for Specific Places
  %% Algorithm
  %% Glossary
  %% Index
  %% Draft line
  %% Two column, landscape, algorithm environment
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\typeout{^^J^^J
Wiley Book Style, Design No.: SD 001C^^J
and SD 004B^^J
^^J
Written by Amy Hendrickson, TeXnology, Inc., 10/96^^J
^^J
This version is dated \currversion^^J^^J}


%%% LaTeX2.09/LaTeX2e Switch  ====>>>
\newif\ifll
\expandafter\ifx\csname LaTeXe\endcsname\relax % LaTeX2.09 is used
\else% LaTeX2e is being used, so set ll true
\global\lltrue\fi

\ifll
%% (this may not be necessary)
\expandafter\ifx\csname mathunderscore\endcsname\relax
\def\mathunderscore{\leavevmode\kern.06em\vbox{\hrule width.3em}}
\def\mathellipsis{\mbox {$\m@th{\,.\,.\,.}\,$}}\fi
\global\newdimen\phspace
\else
\gdef\@plus{plus}
\gdef\@minus{minus}
\fi

%% Dimensions for both 2e and 2.09 ===>>>

\parindent=1pc
\parskip=0pt %plus .1pt

%% to make the 6 1/8 by 9 1/4 trim size
\textheight=45pc \textwidth=28pc

\topmargin.75in
\headheight 12pt
\headsep 18pt
\topskip  10pt
\footskip 18pt

\columnsep 10pt
\columnseprule 0pt

\footnotesep 6.65pt
\skip\footins 18pt 

\floatsep 12pt plus 2pt minus 2pt
\textfloatsep 20pt plus 2pt minus 4pt
\intextsep 12pt plus 2pt minus 2pt

\dblfloatsep 12pt plus 2pt minus 2pt
\dbltextfloatsep 20pt plus 2pt minus 4pt

\ifll\else
\global\@maxsep 20pt
\global\@dblmaxsep 20pt
\fi

\@fptop 0pt plus 1fil
\@fpsep 8pt plus 2fil
\@fpbot 0pt plus 1fil
\@dblfptop 0pt plus 1fil
\@dblfpsep 8pt plus 2fil
\@dblfpbot 0pt plus 1fil

\maxdepth=4pt %% 

\oddsidemargin-18pt
\evensidemargin-6pt
\marginparwidth .75in

\if@twocolumn
 \setlength\marginparsep {10\p@}
\else
  \setlength\marginparsep{7\p@}
\fi
\setlength\marginparpush{5\p@}

\setlength\partopsep{2\p@ \@plus 1\p@ \@minus 1\p@}

%%%
\setcounter{topnumber}{10}
\def\topfraction{.9}
\setcounter{bottomnumber}{10}
\def\bottomfraction{.9}
\setcounter{totalnumber}{20}
\def\textfraction{.1}
\def\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\def\dbltopfraction{.7}
\def\dblfloatpagefraction{.5}
%%%

\setlength\arraycolsep{5\p@}
\tabcolsep 6pt

\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}

\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}

%%%%%%%%%%%%%%% <<== end dimensions

%%% Global parameters ==>>

\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}

%% to make left and right page position differently.
\@twosidetrue  \@mparswitchtrue
\@twocolumnfalse

%% 2e ==>>>
\newif\if@openbib
%\@openbibtrue
\@openbibfalse
\newif\if@openright
\newif\if@mainmatter 
\newif\if@restonecol
\newif\if@titlepage
\newif\ifdraft

%% Start new chapter on right side
\newif\if@openright
\@openrighttrue
%% <<== end 2e

\newcommand{\contentsname}{CONTENTS}
\newcommand{\listfigurename}{List of Figures}
\newcommand{\listtablename}{List of Tables}
\newcommand{\bibname}{Bibliography}
\newcommand{\indexname}{INDEX}
\newcommand{\figurename}{Figure}
\newcommand{\tablename}{Table}
\newcommand{\partname}{PART}
\newcommand{\chaptername}{Chapter}
\newcommand{\appendixname}{Appendix}

%%% <== end global parameters


\font\egtbf=cmbx8
\font\sevbf=cmbx7
\font\fivbf=cmbx5






\ifll \let\dooptions\ProcessOptions
\else
\let\dooptions\@options\fi
\dooptions

\ifll
\NeedsTeXFormat{LaTeX2e}
%\ProvidesClass{w-book}
 %             [2004/04/28]

\newcommand{\@ptsize}{}

\renewcommand{\normalsize}{%
\ifdraft
   \@setfontsize\normalsize\@xpt\@xviipt
\else
   \@setfontsize\normalsize\@xpt\@xiipt
\fi
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\newcommand{\small}{%
\ifdraft
   \@setfontsize\small\@ixpt{17}%
\else
   \@setfontsize\small\@ixpt{11}%
\fi
   \abovedisplayskip 8.5\p@ %\@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ %\@plus2\p@
   \belowdisplayshortskip 4\p@ %\@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand{\footnotesize}{%
\ifdraft
   \@setfontsize\footnotesize\@viiipt{17}%
\else
   \@setfontsize\footnotesize\@viiipt{9.5}%
\fi
   \abovedisplayskip 6\p@ %\@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ %\@plus\p@
   \belowdisplayshortskip 3\p@ %\@plus\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand{\xscriptsize}{\@setfontsize\scriptsize\@vipt\@viipt}
\newcommand{\scriptsize}{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand{\tiny}{\@setfontsize\tiny\@vpt\@vipt}
\newcommand{\large}{\@setfontsize\large\@xiipt{14}}
\newcommand{\Large}{\@setfontsize\Large\@xivpt{18}}
\newcommand{\LARGE}{\@setfontsize\LARGE\@xviipt{22}}
\newcommand{\huge}{\@setfontsize\huge\@xxpt{25}}
\newcommand{\Huge}{\@setfontsize\Huge\@xxvpt{30}}


\@maxdepth\maxdepth
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand{\cal}{\@fontswitch{\relax}{\mathcal}}
\DeclareRobustCommand{\mit}{\@fontswitch{\relax}{\mathnormal}}

\else %% LaTeX2.09
%% To get bold super and sub-scripts in the right size:
\gdef\xpt{\textfont\z@\tenrm
  \scriptfont\z@\sevrm \scriptscriptfont\z@\fivrm
\textfont\@ne\tenmi \scriptfont\@ne\sevmi \scriptscriptfont\@ne\fivmi
\textfont\tw@\tensy \scriptfont\tw@\sevsy \scriptscriptfont\tw@\fivsy
\textfont\thr@@\tenex \scriptfont\thr@@\tenex \scriptscriptfont\thr@@\tenex
\def\unboldmath{\everymath{}\everydisplay{}\@nomath\unboldmath
          \textfont\@ne\tenmi
          \textfont\tw@\tensy \textfont\lyfam\tenly
          \@boldfalse}\@boldfalse
\def\boldmath{\@ifundefined{tenmib}{\global\font\tenmib\@mbi
   \global\font\tensyb\@mbsy
   \global\font\tenlyb\@lasyb\relax\@addfontinfo\@xpt
   {\def\boldmath{\everymath{\mit}\everydisplay{\mit}\@prtct\@nomathbold
        \textfont\@ne\tenmib \textfont\tw@\tensyb
        \textfont\lyfam\tenlyb \@prtct\@boldtrue}}}{}\@xpt\boldmath}%
\def\prm{\fam\z@\tenrm}%
\def\pit{\fam\itfam\tenit}\textfont\itfam\tenit \scriptfont\itfam\sevit
    \scriptscriptfont\itfam\sevit
\def\psl{\fam\slfam\tensl}\textfont\slfam\tensl
     \scriptfont\slfam\tensl \scriptscriptfont\slfam\tensl
\def\pbf{\fam\bffam\tenbf}\textfont\bffam\tenbf
    \scriptfont\bffam\sevbf \scriptscriptfont\bffam\fivbf
\def\ptt{\fam\ttfam\tentt}\textfont\ttfam\tentt
    \scriptfont\ttfam\tentt \scriptscriptfont\ttfam\tentt
\def\psf{\fam\sffam\tensf}\textfont\sffam\tensf
    \scriptfont\sffam\tensf \scriptscriptfont\sffam\tensf
\def\psc{\@getfont\psc\scfam\@xpt{\@mcsc}}%
\def\ly{\fam\lyfam\tenly}\textfont\lyfam\tenly
   \scriptfont\lyfam\sevly \scriptscriptfont\lyfam\fivly
\@setstrut \rm}
%
\gdef\@normalsize{\ifdraft
\@setsize\normalsize{17pt}\xpt\@xpt
\else
\@setsize\normalsize{12pt}\xpt\@xpt
\fi
\abovedisplayskip 10\p@ plus2\p@ minus5\p@
\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip  \z@ plus3\p@
\belowdisplayshortskip  6\p@ plus3\p@ minus3\p@
\let\@listi\@listI}
\gdef\small{\ifdraft
\@setsize\small{17pt}\ixpt\@ixpt
\else
\@setsize\small{11pt}\ixpt\@ixpt
\fi
\abovedisplayskip 8.5\p@ %plus3\p@ minus4\p@
\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip \z@ %plus2\p@
\belowdisplayshortskip 4\p@ %plus2\p@ minus2\p@
\def\@listi{\leftmargin\leftmargini
\topsep 4\p@ plus2\p@ minus2\p@\parsep 2\p@ plus\p@ minus\p@
\itemsep \parsep}}
\gdef\footnotesize{\ifdraft
\@setsize\footnotesize{17pt}\viiipt\@viiipt
\else
\@setsize\footnotesize{9.5pt}\viiipt\@viiipt
\fi
\abovedisplayskip 6\p@ %plus2\p@ minus4\p@
\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip \z@ %plus\p@
\belowdisplayshortskip 3\p@ %plus\p@ minus2\p@
\def\@listi{\leftmargin\leftmargini
\topsep 3\p@ plus\p@ minus\p@\parsep 2\p@ plus\p@ minus\p@
\itemsep \parsep}}
%
\gdef\scriptsize{\@setsize\scriptsize{8pt}\viipt\@viipt}
\gdef\tiny{\@setsize\tiny{6pt}\vpt\@vpt}
\gdef\large{\@setsize\large{14pt}\xiipt\@xiipt}
\gdef\Large{\@setsize\Large{18pt}\xivpt\@xivpt}
\gdef\LARGE{\@setsize\LARGE{22pt}\xviipt\@xviipt}
\gdef\huge{\@setsize\huge{25pt}\xxpt\@xxpt}
\gdef\Huge{\@setsize\Huge{30pt}\xxvpt\@xxvpt}
%
\gdef\bfseries{\bf}
\fi

\lineskip 1pt
\normallineskip 1pt
\def\baselinestretch{1}

\normalsize
%% <<== end font info


%% Listing, same as 2.09 ==>>

\def\@listI{\leftmargin\leftmargini
            \parsep 4\p@ \@plus2\p@ \@minus\p@
            \topsep 8\p@ \@plus2\p@ \@minus4\p@
            \itemsep4\p@ \@plus2\p@ \@minus\p@}
\let\@listi\@listI
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    4\p@ \@plus2\p@ \@minus\p@
              \parsep    2\p@ \@plus\p@  \@minus\p@
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    2\p@ \@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep   \topsep}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}

\leftmargini 25pt
\leftmarginii 22pt
\leftmarginiii 18.7pt
\leftmarginiv 17pt
\leftmarginv 10pt
\leftmarginvi 10pt

\leftmargin\leftmargini
\labelsep 5pt
\labelwidth\leftmargini\advance\labelwidth-\labelsep

\if@twocolumn
  \setlength\leftmargini  {2em}
\else
  \setlength\leftmargini  {2.5em}
\fi
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\if@twocolumn
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\else
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\fi
\setlength\leftmargin    {\leftmargini}
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}

\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty

\renewcommand{\theenumi}{\arabic{enumi}}
\renewcommand{\theenumii}{\alph{enumii}}
\renewcommand{\theenumiii}{\roman{enumiii}}
\renewcommand{\theenumiv}{\Alph{enumiv}}
\newcommand{\labelenumi}{\theenumi.}
\newcommand{\labelenumii}{(\theenumii)}
\newcommand{\labelenumiii}{\theenumiii.}
\newcommand{\labelenumiv}{\theenumiv.}
\renewcommand{\p@enumii}{\theenumi}
\renewcommand{\p@enumiii}{\theenumi(\theenumii)}
\renewcommand{\p@enumiv}{\p@enumiii\theenumiii}
\newcommand{\labelitemi}{$\m@th\bullet$}
\newcommand{\labelitemii}{\normalfont\bfseries --}
\newcommand{\labelitemiii}{$\m@th\ast$}
\newcommand{\labelitemiv}{$\m@th\cdot$}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}

\ifll
\newcommand*{\descriptionlabel}[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
\else
\gdef\descriptionlabel#1{\hspace\labelsep \bf #1}\fi

%%% <<=== end of listing commands 

%% Title Pages, Preface, Introduction==>>

\def\preface{\startonoddpage
\chapter*{Preface}
\global\titletrue
\markboth{PREFACE}{PREFACE}
\addtocontents{toc}{\vskip-8pt}
\addcontentsline{toc}{schapter}{Preface}}

\def\prefacefirst{\startonoddpage
\chapter*{Preface to the First Edition}
\global\titletrue
\markboth{PREFACE TO FIRST EDITION}{PREFACE TO FIRST EDITION}
\addtocontents{toc}{\vskip-8pt}
\addcontentsline{toc}{schapter}{\protect\numberline{\ }\string\rlap{Preface to First Edition}}}

\let\endprefacefirst\endpreface

\def\endpreface{\newpage\markboth{}{}}

\def\prefaceauthor#1{\vskip14pt\hbox to\textwidth{\hfill\small\sc #1}}


\def\foreword{\startonoddpage
\chapter*{Foreword}
\global\titletrue
\markboth{FOREWORD}{FOREWORD}
\addtocontents{toc}{\vskip-8pt}
\addcontentsline{toc}{schapter}{Foreword}}

\let\endforeword\endpreface


\def\dedication#1{\startonoddpage
\global\titletrue
\null\vskip15pc
\noindent\hfill\vtop{\hsize=.45\hsize
\leftskip=\parfillskip
\baselineskip=12pt
\parfillskip=0pt
\def\\ {\vskip.5pt}
\Large\it
\noindent#1\vskip1sp}
\thispagestyle{empty}
\newpage\markboth{}{}
}

\def\where#1{\vskip4pt\vtop{\parindent=0pt \wherefont #1}}

\def\acronyms{\startonoddpage
\global\titletrue
\chapter*{Acronyms}
\markboth{Acronyms}{Acronyms}
\addtocontents{toc}{\vskip-8pt}
\addcontentsline{toc}{schapter}{Acronyms}}

\def\acro#1#2{\vskip4pt\hbox to\textwidth{\large
\hbox to5pc{#1\hfill}\vtop{\advance\hsize by
-5pc\raggedright\noindent#2}}}

\def\introduction{\startonoddpage
\global\titletrue
\chapter*{Introduction}
\markboth{INTRODUCTION}{INTRODUCTION}
\renewcommand{\thechapter}{I}
\addtocontents{toc}{\vskip-8pt}
\addcontentsline{toc}{schapter}{Introduction}}

\def\acknowledgments{\startonoddpage
\global\titletrue
\chapter*{Acknowledgments}
\addtocontents{toc}{\vskip-8pt}
\addcontentsline{toc}{schapter}{Acknowledgments}}

\let\acknowledgements\acknowledgments

\def\authorinitials#1{\vskip12pt
\hbox to\textwidth{\hfill#1}\newpage}
%% from 2e
\newcommand{\frontmatter}{\cleardoublepage
            \@mainmatterfalse\pagenumbering{roman}}
\newcommand{\mainmatter}{\cleardoublepage
       \@mainmattertrue\pagenumbering{arabic}}
\newcommand{\backmatter}{\if@openright\cleardoublepage\else\clearpage\fi
      \@mainmatterfalse}
%%

\newif\iftitle

\def\booktitle#1{\def\thetitle{\uppercase{#1}}}
\def\subtitle#1{\def\thesubtitle{#1}}
\def\author#1{\def\theauthor{#1}}
\let\authors\author
\def\editionstatement#1{\def\theeditionstatement{#1}}

\booktitle{}
\subtitle{}
\editionstatement{}

\def\halftitlepage{\thispagestyle{empty}
  \vspace*{9pc}%
  {\parindent \z@ 
    \interlinepenalty\@M
\LARGE
\hyphenpenalty10000
\bfseries\halftitlefont 
\def\\ {\vskip1sp}
\noindent\thetitle\vskip 1sp
}
\newpage
}

\def\titlepage{\ifodd\c@page\else\thispagestyle{empty}\null\newpage\fi
\thispagestyle{empty}
\vbox to\vsize{\vspace*{36pt}%
\hrule height3pt
\vskip6pc
\parindent \z@ 
\interlinepenalty\@M
\Huge
\hyphenpenalty10000
\bfseries\titlefont 
\uppercase{\thetitle}
\ifx\subtitle\empty\else
{\vskip1pt\baselineskip22pt
\subtitlefont \vrule height2pc width0pt\thesubtitle\vskip1sp}\fi
\vskip1pc
\hrule
\ifx\theeditionstatement\empty\else
\vskip48pt
{\editionfont \theeditionstatement}\fi
\vskip6.5pc
{\frenchspacing\baselineskip=12pt
\authorfont \theauthor\vskip1sp}
\vfill
\openin1 wileylogo.eps \ifeof1 \typeout{^^J^^JWarning:
wileylogo.eps not found^^J^^J}
\else
\noindent{\includegraphics[width=1.7in]{wileylogo}}
\fi
\vskip-8pt
{\wileyfont A JOHN WILEY \& SONS, INC., PUBLICATION}
\vskip24pt}\newpage}

\def\affil#1{{\affilfont #1}\vskip18pt}


\def\dotspace{\hskip5pt/\hskip5pt}

%% end Title Pages, Preface

%% Part, Chapter, and Appendix Commands ===>>>

\def\chaptermark#1{}

\newcommand{\part}{\startonoddpage
                 \thispagestyle{empty}%
                     \@tempswafalse
                 \secdef\@part\@spart}

\def\@part[#1]#2{%
\ifnum\c@part=0 \global\@mainmattertrue
\pagenumbering{arabic}\setcounter{page}{1}\fi
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}
  {
\vglue36pt\parindent \z@ 
    \interlinepenalty\@M
\Large
{\partnumberfont 
\partname~\Roman{part}}
\hfill\vrule depth12pt width0pt
\hrule height3pt
\vtop to23.5pc{\vfill
\hyphenpenalty10000
\raggedright
\parfillskip=0pt
\LARGE\baselineskip=24pt\boldmath\bfseries\partfont 
\uppercase{#2}\vskip1pc
\hrule height 1pt
\vskip7pc}}}




\def\@spart#1{%
    {\centering
     \interlinepenalty \@M
     \reset@font
     \Huge \bfseries #1\par}%
    \@endpart}
\def\@endpart{\vfill\newpage
              \if@twoside
                \hbox{}%
                \thispagestyle{empty}%
                \newpage
             \fi}


\def\and{\lowercase{and}\ }

\def\eatone#1{}
\def\oldauthor[#1]#2{{\ifnum\c@chapter<1
\vskip-2pc
\else
\vskip2pc
\ifnum\c@chapter>9\leftskip=4pc\else
\leftskip=3pc\fi\fi\let\\ \newline{#2}\vskip1sp}
{\let\\ \space \let\footnote\eatone\xdef\totoc{\tocauthorfont #1}}
\addtocontents{toc}{\vskip-2.5pt{\string\noindent\hskip24pt\totoc}}
\addtocontents{toc}{\vskip6pt}
}


\newif\iffirstprologue
\def\prologue#1#2{\iffirstprologue\vskip4pt
\global\firstprologuefalse\else
\vskip12pt\fi
{\leftskip=1pc
\parindent=0pt \small
\let\\ \newline#1\vskip1sp
\hbox to\textwidth{\hfill\def\two{#2}\ifx\two\empty\else---#2\fi}
}}


\newdimen\SpaceAboveChapterNumber
\SpaceAboveChapterNumber=36pt

\def\chapter{\global\footnum=0
\global\probcount=0
\global\c@chapapp=0
\global\appendfalse
\renewcommand{\thechapter}{\arabic{chapter}}
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}

\let\savefootnote\footnote
\let\savefootnotetext\footnotetext

\newcount\savefootnotenumber
\newcount\ftnum
\newcount\saveftnum
\def\catchfootnote#1{%
\global\advance\ftnum by1
\expandafter\gdef\csname thecatchfootnote\the\ftnum\endcsname{#1}}

\def\zfnsymbol#1{\expandafter\@zfnsymbol\csname c@#1\endcsname}

\def\@zfnsymbol#1{\ensuremath{\ifcase#1\or \dagger\or \ddagger\or
   \mathsection\or \mathparagraph\or \|\or **\or \dagger\dagger
   \or \ddagger\ddagger \else\@ctrerr\fi}}

\def\zzfnsymbol#1{\expandafter\@zfnsymbol\csname c@#1\endcsname}

\def\@zzfnsymbol#1{\ensuremath{\ifcase#1 \dagger\or \ddagger\or
   \mathsection\or \mathparagraph\or \|\or **\or \dagger\dagger
   \or \ddagger\ddagger \else\@ctrerr\fi}}

\def\@chapter[#1]#2{\startonoddpage
\global\titletrue
%% no floats on chapter title page
\global\@topnum\z@
\global\@botnum\z@
%%
\ifnum\c@chapter=0\relax \ifnum\c@part=1 \else \setcounter{page}{1}
\global\@mainmattertrue% <<===
\fi\fi
%% if using answers.sty:
\expandafter\ifx\csname Closesolutionfile\endcsname \relax
\else
\Closesolutionfile{ans}\fi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\lowercase{\global\savefootnotenumber=\c@footnote
\global\ftnum=0
\setbox0=\hbox{\let\thanks\catchfootnote
\let\\ \relax\let\footnote\catchfootnote#2}
{\def\thefootnote{\zfnsymbol{footnote}}
\ifnum\ftnum<1 \else
\saveftnum\ftnum
\global\advance\saveftnum by1
\ftnum=1
\loop\ifnum\saveftnum>\ftnum
\advance\c@footnote by 1
\savefootnotetext{\csname thecatchfootnote\the\ftnum\endcsname}
\global\advance\ftnum by1
\repeat
\fi}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\gdef\thepage{\csname @arabic\endcsname\c@page}
%
\refstepcounter{chapter}% <<==== moved this here instead of below mainmatter
%% when using answers.sty,
%% to open an ans<chapnum> file to be used for solutions section
\expandafter\ifx\csname Opensolutionfile\endcsname\relax\else
\Opensolutionfile{ans}[ans\the\c@chapter]\fi
\let\dolabelnow\relax
{\def\label##1{\gdef\dolabelnow{\savelabel{##1}}}%
     \global\setbox0=\hbox{\def\\ {\relax}#2}}%
\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
                         \typeout{\@chapapp\space\thechapter.}%
\let\thanks\eatone
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#1}%
                       \else
\let\thanks\eatone
                         \addcontentsline{toc}{chapter}{#1}%
                       \fi
                    \else
\let\thanks\eatone
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                      \@makechapterhead{{
\def\thanks##1{$^{\zfnsymbol{footnote}}$}
\def\\ {\vskip1sp}\uppercase{#2}}}%
\dolabelnow
                      \@afterheading
                    \lowercase{\global\c@footnote\savefootnotenumber}}

\def\@makechapterhead#1{% 
\vglue10pt
\SpaceAboveChapterNumber=36pt
  {\parindent \z@ 
    \interlinepenalty\@M
\Large
\hbox to\textwidth{\hbox{\chapternumberfont CHAPTER
\the\c@chapter}\hfill\vrule depth12pt width0pt}
\hrule height3pt
\vtop to22.5pc{\vfill
\hyphenpenalty10000
\raggedright
\parfillskip=0pt
\LARGE\boldmath\bfseries\chaptertitlefont 
#1\vskip1pc
\hrule height 1pt
\vskip7pc}}
\dooffprintinfo}

\def\@schapter#1{\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi\global\titletrue\relax}

\def\@makeschapterhead#1{%
  \vspace*{14pc}%
\noindent{\Large\bfseries\chaptertitlefont
\uppercase{#1}}\nobreak
\vskip1pc\hrule height1pt\vskip7.5pc}

\let\title\chapter

\newcount\c@chapapp
\def\chapappendix#1{\par
\global\advance\c@chapapp by 1
  \setcounter{section}{0}%
  \setcounter{figure}{0}%
  \setcounter{table}{0}%
  \setcounter{equation}{0}%
  \renewcommand{\@chapapp}{\appendixname}%
  \renewcommand{\thechapter}{%\the\c@chapter.
\Alph{chapapp}}
\def\one{#1}\ifx\one\empty
\section*{Appendix}
\markright{APPENDIX}
\addcontentsline{toc}{schapter}{\protect\numberline{Appendix}}
\else
\section*{Appendix: #1}
\markright{APPENDIX}
\addcontentsline{toc}{schapter}{\protect\numberline{Appendix: #1}}
\fi
}


%%% <<=== end Chapter, Part, and Appendix Commands 


%%% Counters ===>>
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]

%%% <=== end counters

%%% Header Level Names ==>>
\renewcommand{\thepart}         {\Roman{part}}
\renewcommand{\thechapter}      {\arabic{chapter}}
\renewcommand{\thesection}      {\thechapter.\arabic{section}}
\renewcommand{\thesubsection}   {\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection .\arabic{subsubsection}}
\renewcommand{\theparagraph}    {\thesubsubsection.\arabic{paragraph}}
\renewcommand{\thesubparagraph} {\theparagraph.\arabic{subparagraph}}
\newcommand{\@chapapp}{\chaptername}

%%% <<== End Header Level Names


%%% Section Commands ====>>>>

% \@startsection {NAME}{LEVEL}{INDENT}{BEFORESKIP}{AFTERSKIP}{STYLE}
%            optional * [ALTHEADING]{HEADING}
%    Generic command to start a section.
%    NAME       : e.g., 'subsection'
%    LEVEL      : a number, denoting depth of section -- e.g., chapter=1,
%                 section = 2, etc.
%    INDENT     : Indentation of heading from left margin
%    BEFORESKIP : Absolute value = skip to leave above the heading.
%                 If negative, then paragraph indent of text following
%                 heading is suppressed.
%    AFTERSKIP  : if positive, then skip to leave below heading, else
%                 negative of skip to leave to right of run-in heading.
%    STYLE      : commands to set style
%  If '*' missing, then increments the counter.  If it is present, then
%  there should be no [ALTHEADING] argument.
%  Uses the counter 'secnumdepth' whose value is the highest section
%  level that is to be numbered.



\newcommand{\section}{\@startsection {section}{1}{\z@}%
                                   {-22pt plus -1pt minus -6pt
}%
                                   {13pt}%
                                   {\reset@font\normalsize\bfseries\boldmath\sectionfont}}
\newcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
                                     {-16pt plus -1pt minus -3pt
}%
                                     {8pt}%
                                 {\reset@font\large\bfseries\boldmath\subsectionfont}}
\newcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
                                     {-12pt plus -1pt minus -6pt
}%
                                     {-1em}
                           {\reset@font\normalsize\bfseries\boldmath\subsubsectionfont}}
\newcommand{\paragraph}{\@startsection{paragraph}{4}{\z@}%
                                    {-12pt}%
                                    {-1em}%
                               {\reset@font\normalsize\bfseries\paragraphfont}}
\newcommand{\subparagraph}{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\reset@font\normalsize\bfseries}}

%%% <<=== end section commands


%%% Verse, Quote, Extract ==>>

\newenvironment{verse}
               {\let\\=\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item[]}
               {\endlist}
\newenvironment{quotation}
               {\small
\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item[]}
               {\endlist}
\newenvironment{quote}
               {\small
\list{}{\rightmargin\leftmargin}%
                \item[]}
               {\endlist}
\let\extract\quotation
\let\endextract\endquotation
%% <<== end Verse, Quote, Extract 


%%% Math ===>>>

\@addtoreset{equation}{chapter}
\renewcommand{\theequation}{\thechapter.\arabic{equation}}

%%% <<<=== end Math 


%%% Figure and Table Captions ==>>>
\newcounter{figure}[chapter]
\renewcommand{\thefigure}{\thechapter.%
\@arabic\c@figure\theletter}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}[chapter]
\renewcommand{\thetable}{\thechapter.\@arabic\c@table\theletter}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}

\def\xfigure{figure}

\long\def\@makecaption#1#2{%
\vskip\abovecaptionskip
{\small\hyphenpenalty10000
 \sbox\@tempboxa{{\fignumfont#1\quad \ifx\@captype\xfigure\figtextfont\else
\tabtextfont\fi\let\newline\ #2 \ifcontinued Continued\fi}}%
  \ifdim \wd\@tempboxa >.9\hsize \hyphenpenalty10000
\fignumfont #1 \ifcontinued Continued\fi\quad
\ifx\@captype\xfigure\figtextfont\else \raggedright
\advance\hsize-18pt
\tabtextfont\fi#2\par
  \else
    \global \@minipagefalse
    \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
\ifx\@captype\xfigure
  \vskip\belowcaptionskip
\else
\vskip3pt\fi
\gdef\theletter{\relax}
\global\continuedfalse
}}


\newif\ifsettotop

\ifll
\def\@xfloat#1[#2]{%
\def \@captype {#1}\def \@fps {#2}\@onelevel@sanitize \@fps 
\def \reserved@b {!}\ifx \reserved@b \@fps \@fpsadddefault \else 
\ifx \@fps \@empty \@fpsadddefault \fi \fi 
\ifhmode \@bsphack \@floatpenalty -\@Mii \else \@floatpenalty -\@Miii \fi 
\ifinner \@parmoderr \@floatpenalty \z@ 
\else \@next \@currbox \@freelist {\@tempcnta \sixt@@n 
\expandafter \@tfor \expandafter \reserved@a \expandafter :\expandafter 
=\@fps \do {\if \reserved@a h\ifodd \@tempcnta \else \advance \@tempcnta \@ne 
\fi \fi \if \reserved@a t\@setfpsbit \tw@ \global\settotoptrue\fi 
\if \reserved@a b\@setfpsbit 4\fi 
\if \reserved@a p\@setfpsbit 8\fi 
\if \reserved@a !\ifnum \@tempcnta >15 
\advance\@tempcnta -\sixt@@n\relax\fi \fi }\@tempcntb 
\csname ftype@\@captype \endcsname \multiply \@tempcntb \@xxxii \advance 
\@tempcnta \@tempcntb \global \count \@currbox \@tempcnta }\@fltovf \fi 
\global \setbox \@currbox \color@vbox \normalcolor \vbox \bgroup 
\ifx\@captype\xtable
\ifsettotop
\vglue-6pt
\fi\fi\global\settotopfalse
\hsize \columnwidth \@parboxrestore \@floatboxreset}
\else
\def\@xfloat#1[#2]{%
\ifhmode \@bsphack \@floatpenalty -\@Mii \else \@floatpenalty -\@Miii 
\fi 
\def \@captype {#1}\ifinner \@parmoderr \@floatpenalty \z@ \else 
\@next \@currbox \@freelist {\@tempcnta \csname ftype@#1\endcsname 
\multiply \@tempcnta \@xxxii \advance \@tempcnta \sixt@@n \@tfor \@tempa :=#2
\do {\if \@tempa h\advance \@tempcnta \@ne \fi 
\if \@tempa t\advance \@tempcnta \tw@  \global\settotoptrue\fi 
\if \@tempa b\advance \@tempcnta 4\relax \fi 
\if \@tempa p\advance \@tempcnta 8\relax \fi }%
\global \count \@currbox \@tempcnta }\@fltovf \fi 
\global \setbox \@currbox \vbox \bgroup 
\ifx\@captype\xtable
\ifsettotop
\vglue-6pt
\fi\fi\global\settotopfalse
\hsize \columnwidth \@parboxrestore}
\fi


\let\savetabular\tabular
\def\tabular{\tablefontsize\baselineskip=12pt\savetabular}

\@namedef{tabular*}#1{\def\@halignto{to#1}
\tablefontsize\baselineskip12pt\@tabular}

%%% code to get text in tables to extend all the way to left and right
%%% of table

\def\xtable{table}
\def\@array[#1]#2{\setbox\@arstrutbox=\hbox{\vrule 
     height\arraystretch \ht\strutbox
     depth\arraystretch \dp\strutbox
     width\z@}\@mkpream{#2}\edef\@preamble{\halign \noexpand\@halignto
\bgroup%
\tabskip\z@\@arstrut\@preamble
\ifx\@captype\xtable\hskip-\tabcolsep\fi%% <==== Changed
\tabskip\z@ \cr}%
\let\@startpbox\@@startpbox \let\@endpbox\@@endpbox%
  \if #1t\vtop \else \if#1b\vbox \else \vcenter \fi\fi%
  \bgroup\let\par\relax%
  \let\@sharp##\let\protect\relax \lineskip\z@\baselineskip\z@\@preamble}

%% new
\def\new@tabacol{\edef\@preamble{\@preamble\hskip0pt}}

\def\@tabclassz{\ifcase \@lastchclass\@acolampacol% 
\or \@ampacol \or
   \or \or \@addamp \or \@acolampacol\or \@firstampfalse 
\ifx\@captype\xtable \new@tabacol\else\@tabacol \fi%
\fi%
\edef\@preamble{\@preamble%
  \ifcase \@chnum%
     \hfil\ignorespaces\@sharp\unskip\hfil%
     \or \ignorespaces\@sharp\unskip\hfil%
     \or \hfil\hskip\z@ \ignorespaces\@sharp\unskip\fi}}

\let\savehline\hline
\def\hline{\noalign{\vskip3pt}\savehline\noalign{\vskip3pt}}

\def\tablenotes{\vskip2pt\footnotesize}
\let\endtablenotes\relax

%%%%%%%%% Lettered Captions

\def\theletter{\relax}
\newif\ifxfirsttime
\xfirsttimetrue

\def\caption{\ifx\@captype\xtable
\ifx\theletter\xrelax
\global\xfirsttimetrue\refstepcounter\@captype\else
\ifxfirsttime\global\xfirsttimefalse\refstepcounter\@captype\fi\fi
\else
\ifx\theletter\xrelax
\global\xfirsttimetrue\refstepcounter\@captype\else
\ifxfirsttime\global\xfirsttimefalse\refstepcounter\@captype\fi\fi\fi
\edef\@currentlabel{\expandafter\csname p@\@captype\endcsname%
\expandafter\csname the\@captype\endcsname}
\xdef\currcaptype{\@captype}
\@dblarg{\@caption\@captype}}

\def\letteredcaption#1{\gdef\theletter{#1}\caption}

\newif\ifcontinued
\def\continuedcaption{\global\continuedtrue\caption{}}

%%% <<=== end Figure and Table Captions


%%% Table of Contents, List of Figures, LOT ===>>

\newcommand{\@pnumwidth}{1.55em}
\newcommand{\@tocrmarg} {2.55em  plus .5in}
\newcommand{\@dotsep}{4.5}

\def\startonoddpage{\clearpage
\ifodd\c@page\else\null\thispagestyle{empty}\newpage\fi}

\newcommand{\tableofcontents}{%
\startonoddpage
\global\titletrue
    \chapter*{\contentsname}
        \@mkboth{\uppercase{\contentsname}}{\uppercase{\contentsname}}%
\vskip-9pt
\bgroup\parskip=0pt
\chapskip=26pt
\chapheight=6pt
{\normalsize\tocfonts\baselineskip=14pt
\hyphenpenalty=10000
    \@starttoc{toc}%
}
\egroup
    \if@restonecol\twocolumn\fi

\newpage
\markboth{}{}
    }

\newcommand{\listoftables}{%
\startonoddpage
\global\titletrue
    \chapter*{List of Tables
        \@mkboth{\uppercase{\contentsname}}{\uppercase{\contentsname}}}%
\addtocontents{toc}{\vskip-8pt}
\addcontentsline{toc}{schapter}{List of Tables}
\vskip-9pt
\bgroup\parskip=2pt
{\normalsize\tocfonts
\hyphenpenalty=10000
    \@starttoc{lot}%
}
\egroup
    \if@restonecol\twocolumn\fi
\newpage
\markboth{}{}
    }



\newcommand{\listoffigures}{%
\startonoddpage
\global\titletrue
    \chapter*{List of Figures
        \@mkboth{\uppercase{List of Figures}}{\uppercase{List of Figures}}}%
\addtocontents{toc}{\vskip-8pt}
\addcontentsline{toc}{schapter}{List of Figures}
\vskip-9pt
\bgroup\parskip=2pt
{\normalsize\tocfonts
\hyphenpenalty=10000
    \@starttoc{lof}%
}
\egroup
    \if@restonecol\twocolumn\fi
\newpage
\markboth{}{}
    }

\def\l@part#1#2{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
\vskip8pt
    \begingroup
      {\centering\leavevmode\chaptocfont
         \uppercase{Part\ \/ #1}
\vskip1sp
}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}
    \endgroup
\vskip-8pt
  \fi}


\def\l@chapter#1#2{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 14pt \@plus\p@
     \setlength\@tempdima{2.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode 
      \advance\leftskip\@tempdima
      \hskip -\leftskip
\chaptocfont 
#1\nobreak\hfil \nobreak\hbox 
to\@pnumwidth{\hss\chaptocfont #2}\par
      \penalty\@highpenalty
    \endgroup
\vskip4pt
  \fi}

\def\l@schapter#1#2{%
  \ifnum \c@tocdepth >1
    \addpenalty{-\@highpenalty}%
    \vskip 6pt \@plus\p@
     \setlength\@tempdima{2.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode 
      \advance\leftskip\@tempdima
      \hskip -\leftskip
%\chaptocfont 
#1\nobreak\hfil \nobreak\hbox 
to\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
\vskip1sp
  \fi}

% \@dottedtocline{LEVEL}{INDENT}{NUMWIDTH}{TITLE}{PAGE} :
%   Macro to produce a table of contents line with the following
%   parameters:
%     LEVEL    : If LEVEL > \c@tocdepth, then no line produced.
%     INDENT   : Total indentation from the left margin.
%     NUMWIDTH : Width of box for number if the TITLE has a
%                \numberline command.
%                As of 25 Jan 88, this is also the amount of extra indentation
%                added to second and later lines of a multiple line entry.
%     TITLE    : Contents of entry.
%     PAGE     : Page number.
%
%  Uses the following parameters, which must be set by the document style.
%  They should be defined with \def's.
%    \@pnumwidth : Width of box in which page number is set.
%    \@tocrmarg  : Right margin indentation for all but last line of
%                  multiple-line entries.
%    \@dotsep    : Separation between dots, in mu units.  Should be \def'd to
%                  a number like 2 or 1.7
%
\def\@dottedtocline#1#2#3#4#5{%
\ifnum #1>\c@tocdepth \else \vskip \z@ plus.2\p@ {\leftskip #2\relax%
\rightskip \@tocrmarg  \parfillskip -\rightskip \parindent #2\relax%
\@afterindenttrue \interlinepenalty \@M \leavevmode \@tempdima #3\relax %
\advance \leftskip \@tempdima \hbox {}\hskip -\leftskip #4%
\nobreak% \leaders \hbox {$\m@th \mkern%
% \@dotsep mu.\mkern \@dotsep mu$}
\hfill\nobreak\hbox to\@pnumwidth {\hfil #5}\par }\fi}

\newskip\tabandfigskip
\tabandfigskip=6pt plus 3pt minus 3pt
\def\l@table{\setlength\@tempdima{18pt}%
\vskip\tabandfigskip
\@dottedtocline{1}{1.5em}{3.5em}}
\def\l@figure{\setlength\@tempdima{18pt}%
\vskip\tabandfigskip
\@dottedtocline{1}{1.5em}{3.5em}}

\def\l@section{\setlength\@tempdima{18pt}%
\@dottedtocline{1}{2.5em}{3em}}%was 2.3em
\def\l@subsection{\@dottedtocline{2}{5.5em}{3.6em}}% #3 was 3.4em
\def\l@subsubsection{\@dottedtocline{3}{7em}{5.1em}} %was 4.1em
\def\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\def\l@subparagraph{\@dottedtocline{5}{12em}{6em}}


%%% <<=== end TOC

%%% Bibliography, References, Acknowledgements ===>>

\def\@biblabel#1{#1.}


%%%%%% Chapter Bibliography Using BibTeX

\def\chapbblname#1{\def\currentfilename{#1}}

\def\chapbibliography#1{%
\if@filesw \immediate \write \@auxout {\string \bibdata {#1}}\fi 
\expandafter\ifx\csname currentfilename\endcsname\relax
\typeout{^^J^^J As soon as your .bbl file is written,
^^J^^J
!! Please write \string\chapbblname\string{<Your .bbl File Name>\string} !!
^^J\space\space\space before \string\chapbibliography{#1}
^^J^^J
The BibTeX Chapter Bibliography, \string\chapbibliography^^J 
\space\space\space Will not print unless you supply this file name!
^^J^^J
}
\else
{\let\thebibliography\chapthebibliography
\let\endthebibliography\endchapthebibliography
\@input {\currentfilename.bbl}}\fi
}

\def\thechapbibliography{\section*{References}
\gdef\rrunninghead{\uppercase{REFERENCES}}
 \addcontentsline{toc}{section}{\protect
 \numberline{References\string\hss}}
\everypar={}
\bgroup
\frenchspacing
\small
\parindent=-1pc
\leftskip=1pc
\vskip1sp
}

\def\endthechapbibliography{\vskip24pt\egroup\parindent=0pt\relax}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\newblock{}



\def\chapreferences{\ifvmode\vskip-\lastskip\fi
\vskip8pt\vskip1sp\section*{REFERENCES}
\sectionmark{REFERENCES}
\addcontentsline{toc}{section}{\protect\numberline{}References}
\bgroup
\small
\leftmargini=17pt
\labelsep=3pt
      \list{\@biblabel{\arabic{enumiv}}}%
           {\settowidth\labelwidth{\@biblabel{10.}}}%
\usecounter{enumiv}
}


\expandafter\def\csname chapreferences*\endcsname{\ifvmode\vskip-\lastskip\fi
\vskip8pt\vskip1sp\section*{REFERENCES}
\bgroup
\small
\leftmargini=17pt
\labelsep=3pt
      \list{\@biblabel{\arabic{enumiv}}}%
           {\settowidth\labelwidth{\@biblabel{10.}}}%
\usecounter{enumiv}
}

\def\endchapreferences{\endlist\egroup}
\expandafter\def\csname endchapreferences*\endcsname{\endlist\egroup}

%% to get rid of the extra argument used for thebibliography,
%% when redefinining thebibliography to be chapreferences:
\def\chapthebibliography#1{\chapreferences}
\let\endchapthebibliography\endchapreferences

\def\namedchapreferences#1{\ifvmode\vskip-\lastskip\fi
\vskip8pt\vskip1sp\section*{REFERENCES}
\addcontentsline{toc}{schapter}{References}
\bgroup
\small
\def\@biblabel##1{[##1]}
\list
  {\@biblabel{\arabic{enumiv}}}{\settowidth\labelwidth{\@biblabel{[#1]}}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \def\theenumiv{\arabic{enumiv}}}%
    \def\newblock{\hskip .11em plus.33em minus.07em}%
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=\@m}

\def\endnamedchapreferences{\endlist\egroup}

\def\references{
\startonoddpage
\global\titletrue\dooffprintinfo
\chapter*{References}
\markboth{REFERENCES}{REFERENCES}
\addcontentsline{toc}{schapter}{References}
\bgroup\small
\leftmargini=17pt
\labelsep=3pt
      \list{\@biblabel{\arabic{enumiv}}}%
           {\settowidth\labelwidth{\@biblabel{10.}}}%
\usecounter{enumiv}
}

\def\endreferences{\endlist\egroup}

\def\thebibliography#1{\startonoddpage
\global\titletrue\dooffprintinfo
\chapter*{References}
\markboth{REFERENCES}{REFERENCES}
\addcontentsline{toc}{schapter}{References}
\small
\list
  {\@biblabel{\arabic{enumiv}}}{\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \def\theenumiv{\arabic{enumiv}}}%
    \def\newblock{\hskip .11em plus.33em minus.07em}%
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=\@m}

\def\endthebibliography{%
  \endlist}


\def\namedreferences#1{\thebibliography{[#1]}
\def\@biblabel##1{[##1]}
}
\def\endnamedreferences{\endthebibliography}

%% end Bibliography, References and Acknowledgments


%%% Footnotes ===>>>

%  \renewcommand{\footnoterule}{%
%  \kern-3\p@
%  \hrule width .4\columnwidth
%  \kern 2.6\p@}

  \let\footnoterule\relax

\@addtoreset{footnote}{chapter}

\long\def\@makefntext#1{%
    \parindent 1em%
    \noindent
    \@makefnmark#1}

\newcount\footnum
\newcount\savefootnum
\def\endnote#1{\global\advance\footnum by 1\relax$^{\the\footnum}$%
\long\expandafter\gdef\csname foot\the\footnum\endcsname{%
\vtop{\footnotesize\hsize=\textwidth\leftskip=12pt\relax\parindent=-12pt
\indent\hbox to12pt{\the\footnum.\hfill}{#1\strut\vskip1sp}}\vskip1pt}}

\def\endnotetext#1{\global\advance\footnum by 1\relax
\long\expandafter\gdef\csname foot\the\footnum\endcsname{%
\vtop{\footnotesize\hsize=\textwidth\leftskip=12pt\relax\parindent=-12pt
\indent\hbox to12pt{\the\footnum.\hfill}{#1\strut\vskip1sp}}\vskip1pt}}

\newif\ifrefnoteused
\def\refnote{\ifrefnoteused\else\global\refnoteusedtrue
\typeout{^^J^^J!!! ===>>>^^J
Please do not use the command \string\refnote.^^J
Instead write a standard LaTeX reference and use \string\cite
^^J<<<=== !!!^^J^^J}\fi}

\def\notes{\ifnum\footnum=0\else
\savefootnum=\footnum
\footnum=0
\noindent\loop\ifnum\savefootnum>\footnum%
\global\advance\footnum by1\relax%
\csname foot\the\footnum\endcsname\relax%
\expandafter\gdef\csname foot\the\footnum\endcsname{\relax}\relax%
\repeat\global\footnum=0\relax\fi}

\def\note{\hfill}


%%% <<<=== End Footnotes



%%% Running heads ===>>>

%% unless we need these, leave these uncommented
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble

\def\ps@headings{\let\@mkboth\markboth
 \def\@oddfoot{\ifoffprintinfo\global\offprintinfofalse%
\printoffprintinfo\fi%
\iftitle\global\titlefalse{\hfill\foliofont\thepage}\fi}
 \def\@evenfoot{\iftitle\global\titlefalse{\foliofont\thepage\hfill}\fi
\ifoffprintinfo\global\offprintinfofalse%
\printoffprintinfo\fi%
}
 \def\@evenhead{\iftitle\else{\foliofont \thepage}\hskip1.5pc%
\footnotesize\runningheadfont\MakeUppercase\leftmark\fi\hfill}
 \def\@oddhead{\hfill\iftitle\else{\footnotesize\runningheadfont 
\MakeUppercase\rightmark}\hskip1.5pc%
\foliofont\thepage\fi}%
 \def\chaptermark##1{\markboth {\uppercase{##1}}{}}%
 \def\sectionmark##1{\markright {\uppercase{##1}}}}

\markboth{}{}

\ps@headings

\pagestyle{headings}
\pagenumbering{roman}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Special Use Fonts
%%

%% Computer Modern font calls. These will be redefined
%% if PostScript fonts are used.
%%
%% \documentstyle[w-bookps]{w-book} will use PostScript fonts.
%% \documentstyle{w-book} will use Computer Modern fonts.


%% Times-Roman
\def\timesroman{cmr10 }
\def\timesbold{cmbx10 }
\def\timesitalic{cmti10 }
\def\timesbolditalic{cmbx10 }

%% Helvetica
\def\helvetica{cmss10 }
\def\helveticabold{cmssbx10 }
\def\helveticaboldoblique{cmssi10 }
\def\helveticaoblique{cmssi10 }

%% Special Use Fonts
%%
%% Table of Contents
\font\tocarttitlefont=\helveticabold at 12pt
\font\chaptocfont=\helveticabold at 10pt
\font\tocfonts=\timesroman at 10pt


%% Running heads
\font\runningheadfont=\helvetica at6,5pt
\font\foliofont=\helveticabold at 9pt

%% Book Title, Half title page

\font\halftitlefont=\helveticabold at 20pt
\font\titlefont=\helveticabold at 27pt
\font\subtitlefont=\helveticabold at 20pt
\font\editionfont=\helvetica at 14pt
\font\authorfont=\helveticabold at 11pt
\font\affilfont=\helvetica at 10pt
\font\locfont=\timesbolditalic at 7pt

\font\wileyfont=\helveticabold at 10pt
\font\imprintfont=\helvetica at 10pt

%% Part Title
\font\partfont=\helvetica at 24pt
\font\partnumberfont=\helveticabold at 14pt

%% Chapter Title 
\font\chapternumberfont=\helveticabold at 14pt
\font\chaptertitlefont=\helvetica at 18pt

%% Section heads
\font\sectionfont=\helveticabold at 10pt
\font\subsectionfont=\helveticabold at 10pt
\font\subsubsectionfont=\helveticaboldoblique at 10pt
\font\paragraphfont=\helveticaoblique at 10pt

%% Caption 
\font\fignumfont=\timesbold at 9pt
\font\tabnumfont=\timesbold at 9pt
\font\figtextfont=\timesroman at 9pt
\font\tabtextfont=\timesroman at 9pt

%% Table fonts
\def\tablefontsize{\small}
\def\tablefootnotesize{\footnotesize}

%% References/Bibliography
\def\bibfontsize{\small}

%% Text fonts
\font\bit=\timesbolditalic at 8pt

%% Fake Small Caps
\font\bigscfont\timesroman at 9.5pt
\font\smscfont\timesroman at 7.5pt
\font\wherefont\timesitalic at 8pt

%% Problem Sets
\font\probfont\timesbolditalic at 10pt


%%% <=== end special use fonts

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Fake Small Caps

% To use: \fakesc some stuff*
%% \bigscfont, \smscfont are listed in font section above.

\def\fakesc#1*{\edef\stuff{#1 }%
\expandafter\pickupnewword\stuff* }
\def\saveast{*}

\def\rrelax{\relax}

\def\pickupnewlett#1{\def\letter{#1}%
\ifx\letter\saveast\unskip% 
\let\go\relax \else%  
\ifx\letter\rrelax{\bigscfont\ }%
\let\go\pickupnewword\else% 
\uppercase{\def\ucletter{#1}%  upper case letter
\ifx\letter\ucletter%
{\bigscfont#1}\else{\smscfont#1}\fi}%% 
\let\go\pickupnewlett\fi\fi\go}

\def\pickupnewword#1 {\expandafter\pickupnewlett#1\relax}
%% <== end fakesc

%% Algorithm

\def\algorithm{\bgroup\obeylines\obeyspaces\def\ {\quad}
\footnotesize\tt\leftskip=2pc\vskip4pt\relax}
\def\endalgorithm{\vskip4pt\egroup}

%% <== end algorithm


%% ==> glossary
\def\glossary{\startonoddpage\global\titletrue
\dooffprintinfo
\markboth{GLOSSARY}{GLOSSARY}
\chapter*{Glossary}
\addcontentsline{toc}{schapter}{Glossary}
\everypar={}
\bgroup\leftskip=1pc \parindent=-1pc
\def\term##1{\vskip2pt{\bf ##1}\hskip1em\relax}}
\def\endglossary{\vskip12pt\egroup}
%% <==


%%%%%%%%%%%%%%%%%%%%%%%
%% Index ===>>>

% latex default
%% Use \latexprintindex instead of \printindex to
%% get the default latex index.

%% Contents of makeidx.sty contained in \latexprintindex command.
%% This is because \printindex is defined in this package so
%% user doing \usepackage{makeidx} will get error message.

\providecommand*\seealso[2]{\emph{\alsoname} #1}
\providecommand*\alsoname{see also}

\newcommand\latexprintindex{\startonoddpage
\def\see##1##2{\emph{\seename} ##1}
\def\seename{see}
\@input@{\jobname.ind}}

\newenvironment{theindex}
               {\ifstart\def\indexname{Index}\fi
\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\@makeschapterhead{\indexname}]%
                \@mkboth{\uppercase{\indexname}}%
                        {\uppercase{\indexname}}%
 \addcontentsline{toc}{schapter}{Index}
\global\titletrue\dooffprintinfo
\parindent\z@
    \parskip\z@ \@plus .3\p@\relax
    \let\item\@idxitem
\spaceskip=3pt plus 2pt minus 1pt\xspaceskip=\spaceskip
\footnotesize\baselineskip=10pt plus 1pt minus 1pt}
               {\pagestyle{headings}
\if@restonecol\onecolumn\else
\clearpage\fi}
\newcommand{\@idxitem}  {\par\hangindent 40\p@}
\newcommand{\subitem}   {\par\hangindent 40\p@ \hspace*{20\p@}}
\newcommand{\subsubitem}{\par\hangindent 40\p@ \hspace*{30\p@}}
\newcommand{\indexspace}{\par\vskip 10\p@ \@plus0\p@ \@minus3\p@\relax}

%%% <<<=== end latex default Index

\newskip\iletterskip
\iletterskip=8pt plus .1pt minus 2pt
\def\iletter#1{\goodbreak\vskip\iletterskip{\sectionfont\uppercase{#1}\vrule depth 8pt width0pt}\nobreak}

%%%%%%% Index Formatting

\def\testforadd{\addtoindex}

\def\seealso#1{\hskip16pt{\it See also\ }{#1}}

\def\ltr#1{\nobreak\vskip\iletterskip
\hrule
\nobreak
\vskip3pt
{\bf#1}
\nobreak
\vskip\iletterskip}


\let\saveangle>

\newif\ifnosrtfile
\def\newinput#1{\openin1 #1 \ifeof1 \typeout{^^J^^JWarning:
There is no file #1.^^J^^J\space\space \string\printindex\space
will not work without a \jobname.srt file.^^J^^J
\space\space Please run your sorting program 
on \jobname.inx\space
to produce \jobname.srt.^^J^^J}\global\nosrtfiletrue\else
\global\nosrtfilefalse\closein1 \relax\input #1\fi}

\newif\ifnoattfile
\def\xnewinput#1{\openin1 #1 \ifeof1 \typeout{^^J^^JWarning:
There is no file #1.^^J^^J\space\space \string\printauthorindex\space
will not work without a \jobname.att file.^^J^^J
\space\space Please run your sorting program 
on \jobname.aut\space
to produce \jobname.att.^^J^^J}\global\noattfiletrue\else
\global\noattfilefalse\closein1 \relax\input #1\fi}

{\catcode`>=\active
\gdef\printindex{\catcode`>=\active%
\let>\doindex
\newinput{\jobname.srt} \catcode`\*=12 \catcode`>=12
\ifnosrtfile\let\doitnow\relax\else\let\doitnow\doindexending\fi
\doitnow
}

\global\let\printtopicindex\printindex
\gdef\doindexending{
\vskip-14pt
\endmulticols
\newpage
\onecolumn
\leftskip=0pt\vskip1sp}

}
\newif\if@restonecol
\let\saveanglebracket>

{\catcode`>=\active%
\newif\if@restonecol
\gdef\doindex #1{
\newpage\startonoddpage\dooffprintinfo
\ifstart
\multicols{2}[\chapter*{Topic Index}]
\markboth{TOPIC INDEX}{TOPIC INDEX}
\else
\multicols{2}[\chapter*{Index}]
\markboth{INDEX}{INDEX}
\fi
\bgroup
\let>\saveanglebracket
\footnotesize
\noindent\ \unskip
\vskip-\baselineskip
\parindent=-\indexwrap \leftskip=\indexwrap
\def\,{\ifmmode\typeout{mmode^^J^^J}\mskip\thinmuskip\else\comma\fi}
\ifstart
 \addcontentsline{toc}{schapter}{Topic Index}
\else
 \addcontentsline{toc}{schapter}{Index}\fi
\columnsep 35pt
\hfuzz=.5in
\def\checker{#1}
\widowpenalty0
\clubpenalty0
\parskip=0pt plus.001pt
\raggedright
\ifx\checker\testforadd\let\next=\relax\else\let\next=\beginindex\fi\next #1}
}


%%%%%%  Index Entries

\newwrite\innx

\immediate\openout\innx=\jobname.inx

\newif\ifsilent
\newif\ifnotsilent

\newcount\spcount
\def\oneast{\global\spcount=1}
\def\twoast{\global\spcount=2}

\def\astsplit#1*#2#3{{\xdef\pagenumzeros{\ifnum\count0<100
\ifnum\count0<10 00\else 0\fi\fi}\if#2\relax%
\def\,{\noexpand\comma}%
\writeit{#1}%
\else\if#3\relax
\def\,{\noexpand\comma}%
\writeita{#1}\else
\def\,{\noexpand\comma}%
\writeitb{#1}\fi\fi%
\ifnotsilent#1\global\notsilentfalse\fi}}

\def\pickup#1{\astsplit#1*\relax\relax}
\def\inx#1{\global\notsilenttrue\pickup{#1}}
\def\inxx#1{\astsplit#1*\relax\relax}

\def\romannums{\csname @roman\endcsname\c@page}

\def\writeit#1{\xdef\pagenumzeros{\ifnum\count0<100
\ifnum\count0<10 00\else 0\fi\fi}%
\ifx\thepage\romannums%
\write\innx{\noexpand#1 |{%
\pagenumzeros\the\count0\string\global\string\romanontrue}}\else
\write\innx{\noexpand#1 |{\pagenumzeros\the\count0}}\fi}

\def\writeita#1{\xdef\pagenumzeros{\ifnum\count0<100
\ifnum\count0<10 00\else 0\fi\fi}%
\ifx\thepage\romannums%
\write\innx{\noexpand#1 |{\pagenumzeros\the\count0
\oneast\string\global\string\romanontrue}}\else
\write\innx{\noexpand#1 |{\pagenumzeros\the\count0
\oneast}}\fi}

\def\writeitb#1{\xdef\pagenumzeros{\ifnum\count0<100
\ifnum\count0<10 00\else 0\fi\fi}%
\ifx\thepage\romannums%
\write\innx{\noexpand#1 |{\pagenumzeros\the\count0
\twoast\string\global\string\romanontrue}}\else
\write\innx{\noexpand#1 |{\pagenumzeros\the\count0
\twoast}}\fi}

\write\innx{\noexpand>}
\write\innx{\noexpand~}

%% end sending to index

%% start formatting index

%%% Index Macros
%%% Copyright 1992, Amy Hendrickson
%%% TeXnology, Inc.
%%% All rights reserved.


\def\indexit#1{{\it\expandafter\capthis #1}}
\def\indexbf#1{{\bf\expandafter\capthis #1}}
\def\indexsl#1{{\sl\expandafter\capthis #1}}
\def\indextt#1{{\tt\expandafter\capthis #1}}

\def\lcindexit#1{{\it #1}}
\def\lcindexbf#1{{\bf #1}}
\def\lcindexsl#1{{\sl #1}}
\def\lcindextt#1{{\tt #1}}


\def\module{}\def\rightmodule{}
\def\splittocstuff#1{\global\indxnum=#1}

\def\onward{}

\def\addtoindex{\par}

\def\endadd #1{\def\lfe{#1}\if\lfe\noexpand~
\let\more=\relax\let\lfe=\endindx\else
\ifx\lfe\munge\let\more=\relax\else
\ifx\lfe\testforadd\vskip1pt\let\more\relax\else
\par\let\more=\beginindex\fi\fi\fi
\expandafter\more\lfe}

\newcount\indxnum
\newcount\oldindxnum

\def\comma{,\ }
\def\go{}
\def\compare{}
\def\eatthree#1,#2,{}
\def\eattwo#1,{}
\def\oldthreecol{}
\def\oldtwocol{}
\def\oldonecol{}

\newbox\savenumbox

\def\eatcommas{\ifx\twocol\empty%
\let\eat=\relax
\else
   \ifx\threecol\empty\let\eat=\eattwo\else
      \let\eat=\eatthree
    \fi
\fi\eat}

\def\splitoff#1,#2,#3,{\gdef\onecol{#1}\gdef\twocol{#2}%
\gdef\threecol{#3}\eatcommas}%
\def\endin{}
\def\testind{\endin}
\def\testadd{\addtoindex}
\def\oldcompare{}
\newif\ifendindex
\newif\ifsavenum
\newcount\saveindxnum
\newif\ifnnum
\newdimen\indexwrap
\newdimen\indexindent


\def\endindx{\vskip1sp\egroup
\@normalsize}

\newif\ifromanon

%+++ Important changes here, made 9/24/99
\def\beginindex #1 |#2 #3{%
\let~\relax \def\testfortilde{~}%
\parindent=-\indexwrap \leftskip=\indexwrap%
\def\module{}\let\oldrightmodule=\rightmodule%
\def\rightmodule{}%
\setbox0=\hbox{\expandafter\splittocstuff{#2}}%
\global\oldindxnum=\saveindxnum\relax%
\def\changenums{\ifnum\spcount<1%
\ifsavenum\global\savenumfalse\hbox{\unhbox\savenumbox}\fi%
, {\module\ifromanon\expandafter\romannumeral\fi%
\number\indxnum\rightmodule}\else%
\ifnum\spcount=1% 
\ifsavenum\global\savenumfalse\hbox{\unhbox\savenumbox}\fi%
, \underbar{\module\ifromanon\expandafter\romannumeral\fi%
\number\indxnum\rightmodule}%
\relax\global\spcount=0%
\else\ifnum\spcount=2%
\ifsavenum\global\savenumfalse\hbox{\unhbox\savenumbox}\relax%
\global\spcount=0\fi%
\global\spcount=0, {\bf\module\ifromanon\expandafter\romannumeral\fi%
\number\indxnum\rightmodule}%
\fi\fi\fi}%
\def\comparenums{\ifnum\oldindxnum=0\changenums\else%%%%
\ifnum\indxnum=\oldindxnum%
\ifx\oldrightmodule\rightmodule\relax%
\else%
, {\module\ifromanon\expandafter\romannumeral\fi%
\number\indxnum\rightmodule}\fi%
\else%
\advance\oldindxnum by 1\relax%
\ifnum\indxnum=\oldindxnum%
\ifnum\spcount=1%
\gdef\numinbox{\underbar{\ifromanon\expandafter\romannumeral\fi%
\number\indxnum\rightmodule}}%
\global\nnumtrue%
\else%
\ifnum\spcount=2\gdef\numinbox{\bf\ifromanon\expandafter\romannumeral\fi%
\number\indxnum\rightmodule}%
\global\nnumtrue%
\else%
\gdef\numinbox{\ifromanon\expandafter\romannumeral\fi%
\number\indxnum\rightmodule}\fi\fi%
\setbox\savenumbox=\hbox{--\hskip1sp\numinbox}%
\global\spcount=0%
\global\savenumtrue%
    \else%
\ifsavenum\global\savenumfalse\hbox{\unhbox\savenumbox}\changenums%
\else%
\changenums\fi\fi\fi\fi}%
\def\compare{#1}% now compare words
\ifx\compare\oldcompare\comparenums% 
\else\splitoff#1,{},{},%
%%
\ifx\onecol\oldonecol%
   \ifx\twocol\empty%
       \ifsavenum\global\savenumfalse\hbox{\unhbox\savenumbox}\fi%
   \par\global\oldindxnum=0 
   {%\expandafter\capthis
\onecol}\comparenums%
\else%% 
         \ifx\twocol\oldtwocol%
      \ifx\threecol\empty\else%
       \ifx\threecol\oldthreecol
                    \else%
\ifsavenum\global\savenumfalse\hbox{\unhbox\savenumbox}\fi%
\ifx\onecol\oldonecol\else
\par{%\expandafter\capthis
\onecol}\fi%
\ifx\twocol\oldtwocol\else\par\hskip\indexindent{\twocol}\fi%
\par\global\oldindxnum=0\relax%
\hskip2\indexindent{\threecol}\comparenums%% ***
\fi\fi\else%
\ifsavenum\global\savenumfalse\hbox{\unhbox\savenumbox}\fi%
\global\oldindxnum=0\relax
\ifx\threecol\empty% 
%%
\ifx\onecol\oldonecol\else\par{%\expandafter\capthis
\onecol}\fi%
\par\hskip\indexindent{\twocol}\comparenums%% ***
\else%% this is just for error control, 
%% when author has new third level
%% but neglects second level entry.
\ifx\onecol\oldonecol\else\par%
{%\expandafter\capthis
\onecol}\fi%
\ifx\twocol\oldtwocol\else
\par\hskip\indexindent{\twocol}\fi%
\par\hskip2\indexindent{\threecol}\comparenums% ***
\fi%
\fi\fi\else\ifx\twocol\empty%
\ifsavenum\global\savenumfalse\hbox{\unhbox\savenumbox}\fi% 
\par\global\oldindxnum=0\relax%
{%\expandafter\capthis
\onecol}\comparenums%
\else\ifx\threecol\empty%
\ifsavenum\global\savenumfalse\hbox{\unhbox\savenumbox}\fi%
\global\oldindxnum=0\relax%
\ifx\onecol\oldonecol\else\par%
{%\expandafter\capthis
\onecol}\fi%
\par\hskip\indexindent{\twocol}\comparenums%% ***
\else%
\ifsavenum\global\savenumfalse\hbox{\unhbox\savenumbox}\fi%
\global\oldindxnum=0\relax%
\ifx\onecol\oldonecol\else\par%
{%\expandafter\capthis
\onecol}\fi%
\ifx\twocol\oldtwocol\else
\par\hskip\indexindent{\twocol}%
\fi%
\par\hskip2\indexindent{\threecol}\comparenums% ***
\fi\fi\fi\fi%
\gdef\oldcompare{#1}%
\global\saveindxnum=\indxnum%
\ifnnum\global\saveindxnum=0\global\nnumfalse\fi%
\global\let\oldonecol=\onecol\relax%
\global\let\oldtwocol=\twocol% 
\global\let\oldthreecol=\threecol% 
\def\turnoff{#3}\ifx\turnoff\testadd% 
\ifsavenum\global\savenumfalse\hbox{\unhbox\savenumbox}\fi%
\let\go=\relax\else\ifx\turnoff\testind\let\go=\relax%
\ifsavenum\global\savenumfalse\hbox{\unhbox\savenumbox}\fi\else%
\ifx\turnoff\testfortilde\let\go=\endindx%
\ifsavenum\global\savenumfalse\unskip\hbox{\unhbox\savenumbox}\fi%
\else\let\go=\beginindex\fi\fi\fi\global\romanonfalse\go#3}




\let\lastonecol\relax
\let\lasttwocol\relax
\let\lastthreecol\relax
\let\oldonecol\relax
\let\oldtwocol\relax
\let\oldthreecol\relax


%% CHANGE INDEX FORMAT HERE ====>

%% If you DO NOT want the first letter of each first level index
%% entry to be capitalized, delete the % in front of the following line, 
%% and put % in front of the next line:

\let\capthis\relax
%\def\capthis#1{\uppercase{#1}}%

\indexindent=8pt %% indentation for index subentries
\indexwrap=24pt  %% indentation when term is too wide for column,
                 %% continues on following lines indented this much.

%%%%%
%% Frank Mittlebach's multicol macros, minus comments and
%% irrelevancies.

\def\multicols#1{\col@number#1\relax
  \@ifnextchar[\mult@cols{\mult@cols[]}}

\def\mult@cols[#1]{\@ifnextchar[%
  {\mult@@cols{#1}}%
  {\mult@@cols{#1}[\premulticols]}}

\def\mult@@cols#1[#2]{%
   \enough@room#2%
   #1\nobreak\par%\addvspace\multicolsep 
   \begingroup
   \prepare@multicols\ignorespaces}

\def\enough@room#1{\par \penalty\z@
   \page@free \pagegoal
   \advance \page@free -\pagetotal
   \ifdim \page@free <#1\newpage \fi}

\def\prepare@multicols{%
  \output{\global\setbox\partial@page
                 \vbox{\unvbox\@cclv}}\eject
  \vbadness9999 \hbadness5000
  \tolerance\multicoltolerance 
  \doublecol@number\col@number
  \multiply\doublecol@number\tw@
  \advance\baselineskip\multicolbaselineskip
  \advance\@colroom-\ht\partial@page
  \vsize\col@number\@colroom
  \advance\vsize\c@collectmore\baselineskip
  \hsize\columnwidth \advance\hsize\columnsep
  \advance\hsize-\col@number\columnsep
  \divide\hsize\col@number 
  \linewidth\hsize 
  \output{\multi@columnout}%
  \multiply\count\footins\col@number
  \multiply\skip \footins\col@number
  \reinsert@footnotes}

\def\endmulticols{\parskip=0pt
\par\penalty\z@
  \output{\balance@columns}\eject\nobreak%
\endgroup
}

\newcount\c@unbalance     \c@unbalance   = 0
\newcount\c@collectmore   \c@collectmore = 0

\newcount\col@number 
\newcount\doublecol@number
\newcount\multicoltolerance
                   \multicoltolerance = 9999
\newdimen\page@free
\newdimen\premulticols  \premulticols = 50pt
\newdimen\postmulticols \postmulticols= 50pt
\newskip\multicolsep 
      \multicolsep =0pt

\newskip\multicolbaselineskip 
                   \multicolbaselineskip=0pt
\newbox\partial@page

\def\process@cols#1#2{\count@#1\relax
     \loop #2%
     \advance\count@\tw@
     \ifnum\count@<\doublecol@number 
   \repeat}


\def\page@sofar{\unvbox\partial@page 
   \process@cols\z@{\wd\count@\hsize}%
\hbox to\textwidth{%
     \process@cols\tw@{\box\count@\hss}%
\box\z@}
}


\def\reinsert@footnotes{\ifvoid\footins\else
         \insert\footins{\unvbox\footins}\fi}

\def\multi@columnout{%
   \ifnum\outputpenalty <-\@Mi
   \speci@ls \else
   \splittopskip\topskip 
   \splitmaxdepth\maxdepth
   \dimen@\@colroom
   \divide\skip\footins\col@number
   \ifvoid\footins \else
      \advance\dimen@-\skip\footins 
      \advance\dimen@-\ht\footins   \fi
   \process@cols\tw@{\setbox\count@
            \vsplit\@cclv to\dimen@}%
   \setbox\z@\vsplit\@cclv to\dimen@
   \ifvoid\@cclv \else 
       \unvbox\@cclv
       \penalty\outputpenalty\fi     
   \setbox\@cclv\vbox{\page@sofar}%
   \@makecol\@outputpage
   \global\@colroom\@colht
   \process@deferreds
   \global\vsize\col@number\@colroom 
   \global\advance\vsize
      \c@collectmore\baselineskip
   \multiply\skip\footins\col@number\fi}

\def\speci@ls{%
   \unvbox\@cclv\reinsert@footnotes
   \gdef\@currlist{}}

\def\process@deferreds{%
   \@floatplacement 
   \begingroup
    \let\@tempb\@deferlist
    \gdef\@deferlist{}%
    \let\@elt\@scolelt
      \@tempb \endgroup}

\newif\ifshr@nking

\def\raggedcolumns{%
   \@bsphack\shr@nkingtrue\@esphack}

\def\flushcolumns{%
   \@bsphack\shr@nkingfalse\@esphack}

\newcount\loopcount

\newdimen\savedimen
\newdimen\fixdimen

\def\escapeloop{\gdef\iterate{}}

\let\saveiterate\iterate

\def\balance@columns{%
\loopcount=0
\fixdimen=0pt
   \splittopskip\topskip
   \splitmaxdepth\maxdepth
   \setbox\z@\vbox{\unvbox\@cclv}\dimen@\ht\z@
   \advance\dimen@\col@number\topskip
   \advance\dimen@-\col@number\baselineskip
   \divide\dimen@\col@number
   \advance\dimen@\c@unbalance\baselineskip
   {\vbadness\@M \loop
   {\process@cols\@ne{\global\setbox\count@
                              \box\voidb@x}}%
     \global\setbox\@ne\copy\z@
     {\process@cols\thr@@{\savedimen\ht\@ne \advance\savedimen by-\dimen@
\global\setbox\count@ \vsplit\@ne to\dimen@ 
\ifdim\savedimen>\ht\@ne % AH: TeX was forced to make box bigger than \dimen@.
\advance\savedimen by-\ht\@ne \advance\savedimen by -7.1pt 
\ifdim\savedimen>\fixdimen \global\fixdimen\savedimen\fi\fi}}%
    \ifdim\ht\@ne >\ht\thr@@
    \global\advance\dimen@\p@%.5\baselineskip
\global\advance\loopcount by1
\ifnum\loopcount=90 \escapeloop\fi
   \repeat}%
\let\iterate\saveiterate
\dimen@\ht\thr@@  
\ifdim\fixdimen>0pt \advance\dimen@ by \fixdimen\fi
   \process@cols\z@{\@tempcnta\count@ 
        \advance\@tempcnta\@ne
        \setbox\count@\vtop to\dimen@
           {\unvbox\@tempcnta
           \ifshr@nking\vfill\fi}
}%
   \global\vsize\@colroom 
   \global\advance\vsize\ht\partial@page
   \page@sofar
}

%%%%%%%%% Author Index %%%%%%%%%%%%

\newwrite\annx

\def\authorastsplit#1*#2#3{{\xdef\pagenumzeros{\ifnum\count0<100
\ifnum\count0<10 00\else 0\fi\fi}\if#2\relax%
\def\,{\noexpand\comma}%
\awriteit{#1}%
\else\if#3\relax
\def\,{\noexpand\comma}%
\awriteita{#1}\else
\def\,{\noexpand\comma}%
\awriteitb{#1}\fi\fi%
\ifnotsilent#1\global\notsilentfalse\fi}}

\def\authorpickup#1{\authorastsplit#1*\relax\relax}
\def\anx#1{\startauthorindex\global\notsilenttrue\authorpickup{#1}}
\def\anxx#1{\startauthorindex\authorastsplit#1*\relax\relax}

\newif\ifstart
\def\startauthorindex{\ifstart\else
\global\starttrue %% will make "topic index" for heading on \printindex
\immediate\openout\annx=\jobname.aut
\write\annx{\noexpand>}\write\annx{\noexpand~}\fi}


\def\awriteit#1{\xdef\pagenumzeros{\ifnum\count0<100
\ifnum\count0<10 00\else 0\fi\fi}%
\ifx\thepage\romannums%
\write\annx{\noexpand#1 |{%
\pagenumzeros\the\count0\string\global\string\romanontrue}}\else
\write\annx{\noexpand#1 |{\pagenumzeros\the\count0}}\fi}

\def\awriteita#1{\xdef\pagenumzeros{\ifnum\count0<100
\ifnum\count0<10 00\else 0\fi\fi}%
\ifx\thepage\romannums%
\write\annx{\noexpand#1 |{\pagenumzeros\the\count0
\oneast\string\global\string\romanontrue}}\else
\write\annx{\noexpand#1 |{\pagenumzeros\the\count0
\oneast}}\fi}

\def\awriteitb#1{\xdef\pagenumzeros{\ifnum\count0<100
\ifnum\count0<10 00\else 0\fi\fi}%
\ifx\thepage\romannums%
\write\annx{\noexpand#1 |{\pagenumzeros\the\count0
\twoast\string\global\string\romanontrue}}\else
\write\annx{\noexpand#1 |{\pagenumzeros\the\count0
\twoast}}\fi}


{\catcode`>=\active
\gdef\printauthorindex{\startonoddpage
\global\starttrue
\catcode`>=\active%
\let>\doauthorindex
\xnewinput{\jobname.att} \catcode`\*=12 \catcode`>=12
\ifnoattfile\let\doitnow\relax\else\let\doitnow\doindexending\fi
\doitnow
}}

\def\doauthorindex #1{\multicols{2}[\chapter*{Author Index}]
\global\titletrue\dooffprintinfo
\markboth{Author Index}{Author Index}
\bgroup
\footnotesize
\noindent\ \unskip
\vskip-\baselineskip
\parindent=-\indexwrap \leftskip=\indexwrap
\def\,{\ifmmode\typeout{mmode^^J^^J}\mskip\thinmuskip\else\comma\fi}
 \addcontentsline{toc}{schapter}{Author Index}
\columnsep 35pt
\hfuzz=.5in
\def\checker{#1}
\widowpenalty0
\clubpenalty0
\parskip=0pt plus.001pt
\raggedright
\ifx\checker\testforadd\let\next=\relax\else\let\next=\beginindex\fi\next #1}

%%%%%%%%%%%%%%
% Draft

\def\draft{\global\drafttrue
\def\@oddfoot{\vtop to 0pt{\vskip24pt\large\tt
D R A F T\hfill\today, \realtime\hfill D R A F T\global\titlefalse\vss}}
\def\@evenfoot{\@oddfoot}\normalsize}

\def\fix{\ifcase\oldtime 0\or0\or0\or%
0\or0\or0\or0\or0\or0\or0\fi}
\def\fixtiming{\ifcase\timing 0\or0\or0\or% 
0\or0\or0\or0\or0\or0\or0\fi}
\newcount\timing 
\newcount\hourcount
\newcount\oldtime 

\def\realtime{\timing=\time \oldtime=\time
\ifnum\timing>60 \divide\timing by 60
\hourcount=\the\timing
\multiply\timing by 60
\advance\oldtime by-\timing
\ifnum\hourcount<12 \number\hourcount:\fix\number\oldtime am\fi%
\ifnum\hourcount=12 \number\hourcount:\fix\number\oldtime pm\fi%
\ifnum\hourcount>12 \advance\hourcount by-12
\number\hourcount:\fix\number\oldtime pm\fi
\else12:\fixtiming\number\timing am\fi}

\newcommand{\today}{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}

%%% Two column, landscape, environment for program examples

%% To use:
% \programcaption{<Caption>} % (optional)
% \colone
% \begin{verbatim}
%  (program code)
% \end{verbatim}
% \endcolone
% \coltwo
% \begin{verbatim}
% (program code)
% \end{verbatim}
% \endcoltwo

\newdimen\landscapeoddpagedown
\newdimen\landscapeevenpagedown
\newdimen\landscapepagetoright

%% These dimensions are used for positioning the landscape page
%% on the physical page.
\landscapeoddpagedown=10pt %% move code down on odd numbered page 
\landscapeevenpagedown=79pt%% move code down on even numbered page 
\landscapepagetoright=1in  %% move code to the right on either odd or
                           %% even pages

\def\programcaption#1{\def\thecaption{#1}}
\programcaption{}
\def\doprogramcaption{\ifx\thecaption\empty
\else
\def\@captype{figure}
\caption{\thecaption}\fi
\gdef\thecaption{}}
\def\colone{\vglue36pt\bgroup\textwidth 47pc
\oddsidemargin=0pt
\evensidemargin=0pt
\thispagestyle{empty}
\setbox1=\vbox\bgroup
\xscriptsize\let\tt\scripttt
\hsize=22.5pc\vskip-6pt\vskip1sp}
\def\endcolone{\vskip-6pt\egroup}
\def\coltwo{\setbox2=\vbox\bgroup\xscriptsize\let\tt\scripttt\hsize=22.5pc\vskip-6pt
\vskip1sp}

\def\endcoltwo{\vskip-12pt\egroup
\ifodd\c@page \global\dimen0=\landscapeoddpagedown 
\else\global\dimen0=\landscapeevenpagedown\fi
\vglue\dimen0
\moveright-\landscapepagetoright\vbox{%% for whole page
\hrule height .9pt
\hbox{%%
\vrule height 27pc width .9pt
\vbox to27pc{\hbox to23.5pc{\hss\hskip6pt\vbox{\unvbox1}\hss}
\vfill}
\vrule 
\vbox to27pc{\hbox to23.5pc{\hss\hskip6pt\vbox{\unvbox2}\hss}
\vfill}\vrule height 27pc width .9pt\hss}
\hrule
\vtop to0pt{\hsize=47pc\doprogramcaption\vss}}
\vskip1sp\newpage\egroup}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Problem Set Macros

\newcount\probcount
\newcount\subprobcount
\newcount\c@subproblem
\def\problems{\goodbreak\vskip12pt
\markright{PROBLEMS}
\addcontentsline{toc}{section}{\protect\numberline{}Problems}
\noindent{\sectionfont\uppercase{Problems}\vrule depth 4pt width0pt}\markright{PROBLEMS}\nobreak}

\long\def\xappendixname{\appendixname}%

\def\endproblems{\xdef\@currentlabel{\thechapter}}
\def\appendchapt{\Alph {chapter}}
\def\prob{\ifx\@chapapp\xappendixname
\let\go\aprob\else\let\go\chapprob\fi\go}
\def\subprob{\ifx\@chapapp\xappendixname
\let\go\asubprob\else\let\go\chapsubprob\fi\go}


\def\aprob{\vskip6pt
\leftskip=0pt
\global\c@subproblem=0
\global\advance\probcount by1
\xdef\@currentlabel{\Alph{chapter}.\the\probcount}
\noindent{\bf\Alph{chapter}.\the\probcount\hskip12pt\relax}}


\def\asubprob{\vskip1pt
\global\advance\c@subproblem by1
\leftskip=39pt
\xdef\@currentlabel{\Alph{chapter}.\the\probcount.\alph{subproblem}}
%
\noindent\hbox to 0pt{\hss\bf\alph{subproblem})\ \ }\relax}


\newcount\c@subproblem

\def\chapprob{\vskip6pt
\leftskip=0pt
\global\c@subproblem=0
\global\advance\probcount by1
\xdef\@currentlabel{\the\c@chapter.\the\probcount}
\noindent{\bf\the\c@chapter.\the\probcount\hskip12pt\relax}}

\def\chapsubprob{\vskip1pt
\global\advance\c@subproblem by1
\leftskip=39pt
\xdef\@currentlabel{\the\c@chapter.\the\probcount.\alph{subproblem}}
%
\noindent\hbox to 0pt{\hss\bf\alph{subproblem})\ \ }\relax}

\def\sidebysideprob#1#2{\centerline{\vtop{\hsize=.475\textwidth
\prob #1}\hfill\vtop{\hsize=.475\textwidth \prob #2}}}

\def\sidebysidesubprob#1#2{\centerline{\vtop{\hsize=.475\textwidth
\subprob #1}\hfill\vtop{\hsize=.475\textwidth \subprob #2}}}

%%%% <<==  end of problem set macros 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Exercises


\def\exercises{\goodbreak\vskip12pt
\markright{EXERCISES}
\addcontentsline{toc}{section}{\protect\numberline{}Exercises}
\noindent{\sectionfont\uppercase{Exercises}\vrule depth 4pt width0pt}\markright{EXERCISES}\nobreak}

\def\endexercises{\xdef\@currentlabel{\thechapter}}

\let\exer\prob
\let\subexer\subprob
\let\sidebysideexer\sidebysideprob
\let\sidebysidesubexer\sidebysidesubprob



%%%% <<==  end of exercise macros 


\pagenumbering{roman}
\widowpenalty10000
\clubpenalty10000

%%%%%
%%%% side by side
%%%% to use: 
% \begin{figure or table} \sidebyside{}{} \end{figure or table}
%
% \begin{table} 
% \sidebyside{\caption{table caption} first table}
% {\caption{table caption} second table}
% \end{table}

% or

% \begin{figure} 
% \sidebyside{\vskip<dimen>\caption{fig caption}}
% {\vskip<dimen>\caption{fig caption}}
% \end{figure}

%% To label for cross referencing, use \label after and <outside> of
%% \caption{}

% \begin{table} 
% \sidebyside{\caption{table caption}\label{tab1}
% first table}
% {\caption{table caption}\label{tab2} second table}
% \end{table}

% or

% \begin{figure} 
% \sidebyside{\vskip<dimen>\caption{fig caption}\label{fig1}}
% {\vskip<dimen>\caption{fig caption}\label{fig2}}
% \end{figure}



\long\def\sidebyside#1#2{%
\hbox to\textwidth{\vtop{\hsize=.5\textwidth%
\advance\hsize by -.5\columnsep
\parindent=0pt
\centering
 
#1\vskip1sp}\hskip\columnsep\vtop{\hsize=.5\textwidth%
\advance\hsize by -.5\columnsep
\parindent=0pt
\centering
#2

}\hfill}}

%% To make Chapter Table of Contents
%% January 27, 2002
%%
%% Type \chaptableofcontents after \chapter{title} command:
%% \chapter{Chapter Title}
%% \chaptableofcontents


\def\x@dottedtocline#1#2#3#4#5{%
\ifnum #1>\c@tocdepth \else \vskip \z@ plus.01\p@ 
{\leftskip #2\relax 
\rightskip \@tocrmarg  \parfillskip -\rightskip \parindent #2\relax 
\@afterindenttrue 
\interlinepenalty \@M \leavevmode \@tempdima #3\relax 
\advance \leftskip \@tempdima \hbox {}\hskip -\leftskip{\bf #4}%
\nobreak% \leaders \hbox {$\m@th \mkern
% \@dotsep mu.\mkern \@dotsep mu$}
\hfill\nobreak\hbox to\@pnumwidth {\hfil #5}\par }\fi}

\def\l@xsection{
\x@dottedtocline{1}{\parindent}{2.5em}}%was 2.3em

\def\@sect#1#2#3#4#5#6[#7]#8{\let\dolabelnow\relax%
\ifnum #2>\c@secnumdepth
     \let\@svsec\@empty
\else 
     \refstepcounter{#1}\edef\@svsec{\csname the#1\endcsname\hskip 1em }\fi
     \@tempskipa #5\relax
\ifdim \@tempskipa>\z@ 
%
        \begingroup#6\relax  
          \@hangfrom{\hskip #3\relax\@svsec}{\interlinepenalty \@M 
     \hyphenpenalty=10000 % No hyphenation in section heads
     \raggedright 
     %% make section head uppercase
{\def\label##1{\gdef\dolabelnow{\savelabel{##1}}}%
     \global\setbox0=\hbox{\def\\ {\relax}#8}}%
     \ifnum#2=1     \uppercase{\fi%
     \def\label##1{}%
     \def\\ {\hfill\break}%
     #8\ifnum#2=1}\fi\par}%%
     \endgroup%
     \csname #1mark\endcsname{#7} % 
%
     {%<===
     \def\\ { }%
    \addcontentsline{toc}{#1}{\ifnum #2>\c@secnumdepth\else%
                      \protect\numberline{\csname the#1\endcsname}\fi
                    #7 }%<===
    }%<===
%
\else
\def\@svsechd{#6\hskip #3\relax
                 \@svsec #8\ifnum#2=4.\fi\csname #1mark\endcsname
                   {#7}\addcontentsline
                     {toc}{#1}{\ifnum #2>\c@secnumdepth \else
                             \protect\numberline{\csname the#1\endcsname}\fi
                       #7}}\fi\@xsect{#5} 
\dolabelnow %% to make label not be uppercase.
\ifnum #2=1
\ifchaptoc
\write\currchap{\string\contentsline{xsection}{\string\numberline{\thesection}#7}
{\thepage}}\fi\fi}


\newif\ifchaptoc
\def\chaptableofcontents{\chaptoctrue
\openin1=ch\the\c@chapter.toc
\ifeof1
\typeout{^^J^^J Please run LaTeX on this chapter^^J
again to form a Chapter Table of Contents^^J^^J}
\else
\closein1
\input ch\the\c@chapter.toc\fi
\newwrite\currchap
\immediate\openout\currchap=ch\the\c@chapter.toc
\vskip12pt}

%% April 2004

\def\copyrightpage{\thispagestyle{empty}%
\vbox to\textheight\bgroup\vfill\obeylines\obeyspaces\xcopyrightpage}

\def\xcopyrightpage#1#2\end#3{\scriptsize\parindent=0pt
Copyright \copyright{#1} by John Wiley \& Sons, Inc. All rights reserved.
\vskip6.5pt
Published by John Wiley \& Sons, Inc., Hoboken, New Jersey.\\
Published simultaneously in Canada.
\vskip6.5pt

No part of this publication may be reproduced, stored in a retrieval
system, or transmitted in any form\\ or by any means, electronic,
mechanical, photocopying, recording, scanning, or otherwise, except
as\\ permitted under Section 107 or 108 of the 1976 United States
Copyright Act, without either the prior\\ written permission of the
Publisher, or authorization through payment of the appropriate
per-copy fee to\\ the Copyright Clearance Center, Inc., 222 Rosewood
Drive, Danvers, MA 01923, (978) 750-8400,\\ fax (978) 646-8600, or on
the web at www.copyright.com. Requests to the Publisher for
permission should\\ be addressed to the Permissions Department, John
Wiley \& Sons, Inc., 111 River Street, Hoboken, NJ\\ 07030, (201)
748-6011, fax (201) 748-6008.  \vskip10pt

Limit of Liability/Disclaimer of Warranty: While the publisher and
author have used their best efforts in\\ preparing this book, they
make no representations or warranties with respect to the accuracy
or\\ completeness of the contents of this book and specifically
disclaim any implied warranties of\\ merchantability or fitness for a
particular purpose.  No warranty may be created ore extended by
sales\\ representatives or written sales materials.  The advice and strategies contained herin may not be\\
suitable for your situation. You should consult with a professional
where appropriate.  Neither the\\
publisher nor author shall be liable for any loss of profit or any other commercial damages, including\\
but not limited to special, incidental, consequential, or other damages.
\vskip10pt
For general information on our other products and services please contact our Customer Care\\ Department with the U.S. at 877-762-2974, outside the U.S. at
317-572-3993 or fax 317-572-4002.
\vskip10pt
Wiley also publishes its books in a variety of electronic formats. Some content that appears in print,\\
however, may not be available in electronic format.
\vskip10pt
{\locfont Library of Congress Cataloging-in-Publication Data:}
\vskip8pt
#2
Printed in the United States of America.\\

10\ \ 9\ \ 8\ \ 7\ \ 6\ \ 5\ \  4\ \ 3\ \ 2\ \ 1 
\vskip24pt
\egroup\let\@badend\relax\endgroup}

\let\endcopyrightpage\relax

\def\seriespage{\newpage\thispagestyle{empty}\vbox to\textheight\bgroup\vfill
\leftskip=34pt \rightskip=-34pt}
\def\endseriespage{\vskip6pt{\noindent\hskip-12pt
A complete list of the titles in this series appears at the end of this
volume.} \vskip24pt\egroup
\newpage}
\def\series#1#2{\noindent\hskip-12pt\uppercase{#1}\\
\global\setbox0=\hbox{\footnotesize#2}
\hsize=\wd0
\footnotesize#2}

\def\eds#1{\vskip6pt\footnotesize\noindent Editors: {\it #1}}

%%%%%%%%%%%%
%% Off print info

\newif\ifoffprintinfo
\def\dooffprintinfo{\global\offprintinfotrue}

\def\copyrightyear#1{\def\thecopyrightyear{#1}}

\copyrightyear{\the\year}

\def\dofnote#1#2{\vtop{\hyphenpenalty=10000
\advance\hsize -10pt \raggedright
\footnotesize{\it #1. }{By #2}\\
\noindent\hbox{\footnotesize
Copyright \copyright\ \thecopyrightyear\ John Wiley \&
Sons, Inc.}}}


\def\offprintinfo#1#2{
\def\theoffprint{\bgroup\frenchspacing
\dofnote{#1}{#2}
\egroup}}

\def\x@makefntext#1{    
\kern-3\p@
\hrule\@width.4\columnwidth
\kern2.6\p@
\vrule height 9pt width0pt \relax
#1}

\def\offprintinfoerror{\typeout{^^J^^J 
!! Please enter {\string\offprintinfo\string{(Title,
Edition)\string}\string{(Author)\string}^^J at the beginning of your 
document.!!^^J^^J}}
\bgroup
\x@makefntext{Please enter {\tt \string\offprintinfo\string{(Title,
Edition)\string}\string{(Author)\string}\newline at the beginning of your 
document.\vrule depth8pt width0pt}\egroup}}


\def\printoffprintinfo{\vtop to0pt{%
\hsize=\textwidth\footnotesize
\expandafter\ifx\csname theoffprint\endcsname\relax
\offprintinfoerror\else\theoffprint\fi\vskip1sp\vss}}

\let\c@CHAPTER\c@chapter

%% LaTeX2e Cropmark Macros
%% Copyright Amy Hendrickson, TeXnology Inc.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\ifcropmarkson
\def\noprintcropmarks{\global\cropmarksonfalse}
\global\cropmarksontrue


\newdimen\widthofcropmarks

\widthofcropmarks=39.25pc


\newdimen\raisetopcropmarks
\raisetopcropmarks=-25pt

\newdimen\raisebottomcropmarks
%\raisebottomcropmarks-48pt

\raisebottomcropmarks-34pt % was 80pt


\newdimen\movecropmarksright
\movecropmarksright=-92pt

\def\topcropmarks{\ifcropmarkson
\vtop to0pt{\vss
\hbox to0pt{\hskip\movecropmarksright\hbox to0pt{\hss%
\hbox to2pc{\hrulefill\hskip3pt}\raise6pt\hbox{\vrule height 2pc}}%
\hskip\widthofcropmarks%
\hbox to0pt{%
\raise6pt\hbox{\vrule height 2pc}\hbox to2pc{\hskip3pt\hrulefill}\hss}\hss}%
\vskip\raisetopcropmarks}
\fi}

\def\bottomcropmarks{\ifcropmarkson
\vtop to0pt{\vskip-\raisebottomcropmarks
\hbox to0pt{\hskip\movecropmarksright\hbox to0pt{\hss%
\hbox to2pc{\hrulefill\hskip3pt}\lower6pt\hbox{\vrule depth 2pc height
0pt}}%
\hskip\widthofcropmarks%
\hbox to0pt{%
\lower6pt\hbox{\vrule depth 2pc height0pt}\hbox
to2pc{\hskip3pt\hrulefill}\hss}\hss}%
\vss}\fi}


\long\def\docropmarks{\let\saveshipout\shipout
\long\def\shipout\vbox##1{\saveshipout\vbox{\topcropmarks##1\bottomcropmarks
}}
}

\docropmarks

\voffset-60pt
\hoffset48pt

%% new additions, as of Jan 25, 2005

\newif\iffirstappendix
\global\firstappendixtrue

\newcount\c@appfootnote

\def\appthanks#1{*\gdef\realthanks{#1}}

\newif\ifappend

\def\lookatapp{\if\next[\let\go\yappendix\else
\let\go\xappendix\fi\go}
\def\appendix{\global\appendtrue
  \renewcommand{\@chapapp}{\appendixname}%
%% if using answers.sty:
\expandafter\ifx\csname Closesolutionfile\endcsname \relax
\else
\Closesolutionfile{ans}\fi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\futurelet\next\lookatapp}

\def\yappendix[#1]#2{\startonoddpage
\global\titletrue\dooffprintinfo
\global\@mainmattertrue% <<===
\gdef \thepage {\csname @arabic\endcsname \c@page }
%% To fix includeonly numbering bug: ====>> 
\if@partsw\else
\iffirstappendix\setcounter{chapter}{0}\fi
\global\firstappendixfalse\fi% 
\refstepcounter{chapter}
% <<====  end bug fix
%% when using answers.sty,
%% to open an ans<chapnum> file to be used for solutions section
\expandafter\ifx\csname Opensolutionfile\endcsname\relax\else
\Opensolutionfile{ans}[ans\Alph{chapter}]\fi
  \setcounter{section}{0}%
  \setcounter{figure}{0}%
  \setcounter{table}{0}%
  \setcounter{equation}{0}%
\def\two{#2}\ifx\two\empty
\chapter*{Appendix \Alph{chapter}}
\renewcommand{\thechapter}{\Alph{chapter}}
\addcontentsline{toc}{schapter}{Appendix \thechapter}
\else
\chapter*{\vtop{\let\thanks\appthanks
\let\\\break \baselineskip=30pt \parindent=0pt
\leftskip=0pt
 Appendix \Alph{chapter}\vskip4pt
 #2}}
\renewcommand{\thechapter}{\Alph{chapter}}
\addcontentsline{toc}{schapter}{Appendix \thechapter:\space #1}
\fi
\def\one{#1}
\ifx\one\empty
\markboth{\uppercase{Appendix \thechapter}}{\uppercase{Appendix \thechapter}}
\else
\markboth{\uppercase{#1}}{\uppercase{#1}}
\fi
\xdef\@currentlabel{\thechapter}
\ifx\realthanks\xrelax\else
\xdef\dofoot{\realthanks}
\fi
{\ifx\realthanks\xrelax\else
\def\thefootnote{*}
\footnotetext{\dofoot}\fi}
\gdef\realthanks{\relax}
}


\let\dofoot\relax
\gdef\realthanks{\relax}
\def\xrelax{\relax}
\def\xappendix#1{\startonoddpage
\global\titletrue\dooffprintinfo
\global\@mainmattertrue% <<===
\gdef \thepage {\csname @arabic\endcsname \c@page }
%% To fix includeonly numbering bug: ====>> 
\if@partsw\else
\iffirstappendix\setcounter{chapter}{0}\fi
\global\firstappendixfalse\fi% 
\refstepcounter{chapter}
% <<====  end bug fix
%% when using answers.sty,
%% to open an ans<chapnum> file to be used for solutions section
\expandafter\ifx\csname Opensolutionfile\endcsname\relax\else
\Opensolutionfile{ans}[ans\Alph{chapter}]\fi
  \setcounter{section}{0}%
  \setcounter{figure}{0}%
  \setcounter{table}{0}%
  \setcounter{equation}{0}%
  \renewcommand{\@chapapp}{\appendixname}%
\def\one{#1}\ifx\one\empty
\chapter*{Appendix \Alph{chapter}}
\renewcommand{\thechapter}{\Alph{chapter}}
\addcontentsline{toc}{schapter}{Appendix \thechapter}
\else
\chapter*{\vtop{\let\thanks\appthanks
\let\\\break \baselineskip=30pt 
\leftskip=0pt \parindent=0pt
 Appendix \Alph{chapter}\vskip4pt
 #1}}
\renewcommand{\thechapter}{\Alph{chapter}}
\let\thanks\eatone
\addcontentsline{toc}{schapter}{Appendix \thechapter:\space #1}
\fi
\def\one{#1}
\ifx\one\empty
\markboth{\uppercase{Appendix \thechapter}}{\uppercase{Appendix \thechapter}}
\else
\let\thanks\eatone
\markboth{\uppercase{#1}}{\uppercase{#1}}
\fi
\xdef\@currentlabel{\thechapter}
\ifx\realthanks\xrelax\else
\xdef\dofoot{\realthanks}
\fi
{\ifx\realthanks\xrelax\else
\def\thefootnote{*}
\footnotetext{\dofoot}}
\fi
\gdef\realthanks{\relax}
}

 %% For square boxes for Q.E.D. symbol

 \newdimen\slugwidth
 \newdimen\slugheight
 \newdimen\slugdepth

 \slugwidth=4.5pt
 \slugheight=4.5pt
 \slugdepth=0pt


 \def\qed{\unskip\nobreak~~~\hfill\llap{%
 \vbox{\unskip\nobreak~~~\hfill\llap{\vrule height \slugheight width 
 \slugwidth depth\slugdepth}}}}

\def\sslug{\raise.5ex\hbox{\vrule width 4pt height4pt depth0pt}}
\def\slug{\vrule width 7pt height7pt depth0pt}
\@addtoreset{exampnum}{chapter}
\newcount\c@exampnum

\def\example{\@ifnextchar[{\xexample}{\yexample}}

\def\xexample[#1]{\goodbreak\vskip12pt\global\advance\c@exampnum by 1
\xdef\@currentlabel{\thechapter.\the\c@exampnum}
\noindent\hbox to\textwidth{\vrule depth14pt width0pt\slug\ \ {\small\bf
\uppercase{Example} \thechapter.\the\c@exampnum}\hskip1em {\bf #1}\hfill}%
\bgroup\nobreak\vskip1sp
\leftskip=12pt \rightskip=\leftskip
\@afterindentfalse\@afterheading\nobreak}

\def\yexample{\goodbreak\vskip12pt\global\advance\c@exampnum by 1
\xdef\@currentlabel{\thechapter.\the\c@exampnum}
\noindent\hbox to\textwidth{\vrule depth14pt width0pt\slug\ \ {\small\bf \uppercase{Example} \thechapter.\the\c@exampnum}\hfill}\bgroup
\nobreak\vskip1sp
\leftskip=12pt \rightskip=\leftskip
\@afterindentfalse\@afterheading\nobreak}

\def\endexample{\vskip1sp\egroup\vskip6pt
\global\everypar={\hskip-\parindent\everypar={}}
}


\@addtoreset{algorithm}{chapter}
\@addtoreset{algo}{chapter}
\newtheorem{algo}{Algorithm}[chapter]
\newcount\c@algorithm

\def\algorithm{\vskip12pt
\global\advance\c@algorithm by 1
\xdef\@currentlabel{\thechapter.\the\c@algorithm}
\noindent{\bf Algorithm \arabic{chapter}.\arabic{algorithm}}
\vskip6pt
\bgroup\obeylines\obeyspaces\def\ {\quad}
\footnotesize\tt\leftskip=2pc\vskip4pt\relax}
\def\endalgorithm{\vskip4pt\egroup}

\let\savelabel\label

 \def\proof{\everypar={}
 \futurelet\next\lookforbracket}

 \def\lookforbracket{\ifx\next[\let\go\usespecialterm
 \else\let\go\relax
 \ifvmode\vskip-\lastskip\fi
 \vskip8pt
 \noindent{\it Proof\/:}% 
\enskip\relax\fi\ignorespaces\go}

 \def\usespecialterm[#1]{\ifvmode\vskip-\lastskip\fi
 \vskip6pt
 \noindent%
 {\it Proof\ \ {\rm(#1):}}\ \ \relax\ignorespaces}

 \def\endproof{\qed\vskip6pt\relax}

%%%%%%%%%%%%%%%%%
%% Answers macros
%%%% Problems and Solutions, Accomodating answers.sty commands


\def\solutionchap#1{\section*{\uppercase{Solutions for Chapter} #1}
\openin1 ans#1.tex \ifeof1
\typeout{^^J^^J No file ans#1.tex! 
^^J\string\solutionchap\string{#1\string} requires ans#1.tex^^J
Please
make sure that you have entered
\string\usepackage{answers} and
\string\Newassociation\string{sol\string}\string{Solution\string}\string{ans\string}\space and then run LaTeX on your file again.}
\else
\input{ans#1}\fi}

\def\solutionappendix#1{\section*{\uppercase{Solutions for Appendix} #1}
\openin1 ans#1.tex \ifeof1
\typeout{^^J^^J No file ans#1.tex! 
^^J\string\solutionchap\string{#1\string} requires ans#1.tex^^J
Please
make sure that you have entered
\string\usepackage{answers} and
\string\Newassociation\string{sol\string}\string{Solution\string}\string{ans\string}\space and then run LaTeX on your file again.}
\else
\input{ans#1}\fi}


\def\solutions{\newpage\ifodd\c@page\else\thispagestyle{empty}
\null\newpage\fi
\chapter*{Problem Solutions}
\markboth{Problem Solutions}{Problem Solutions}
\addcontentsline{toc}{schapter}{Problem Solutions}
\expandafter\ifx\csname Closesolutionfile\endcsname \relax\else
\Closesolutionfile{ans}\fi
}

\let\savedocument\document
\let\saveenddocument\enddocument

\def\enddocument{
\expandafter\ifx\csname Closesolutionfile\endcsname \relax\else
\Closesolutionfile{ans}\fi
\saveenddocument}

\def\document{%
\savedocument
\expandafter\ifx\csname Newassociation\endcsname\relax
\def\sol{\typeout{^^J^^J To make \string\begin\string{sol\string} work, please use \string\usepackage\string{answers\string}
^^J^^J}}
\def\endsol{\typeout{^^J^^J}}
\def\Solution##1{\typeout{^^J^^J To make \string\Solution\space work, please use \string\usepackage\string{answers\string}
^^J^^J}}
\else
\Newassociation{sol}{Solution}{ans}\fi
}

\newcommand{\contentsinbrief}{%
\startonoddpage
\global\titletrue
\advance\chapskip-6pt
\chapheight=0pt
\vglue-10.5pc
    \chapter*{Contents in Brief}
    \@mkboth{\uppercase{Contents in Brief}}{\uppercase{Contents in brief}}%
\vskip-3pc
\bgroup\parskip=6pt
{\hyphenpenalty=10000
\parindent=0pt
\@startchaptoc{toc}
}
\egroup
    \if@restonecol\twocolumn\fi
\newpage
\setcounter{tocdepth}{2}
\markboth{}{}
    }


\def\@startchaptoc#1{%
  \begingroup
%\def\numberline##1{\hb@xt@\@tempdima{\hss##1\ \ }}
\def\l@chapter##1##2{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 12pt \@plus6\p@
     \setlength\@tempdima{2em}% was 1.5
    \begingroup\chaptocfont
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      \advance\leftskip\@tempdima
      \hskip -\leftskip
 ##1\nobreak\hfil \nobreak\hbox to\@pnumwidth{\hss ##2}\par
      \penalty\@highpenalty
    \endgroup
  \fi\vskip-6pt}
\setcounter{tocdepth}{0}
    \makeatletter
    \@input{\jobname.#1}%
    \@nobreakfalse
  \endgroup}

%%% Rotate Table and Figure
\def\rotatetable{\expandafter\ifx\csname rotatebox\endcsname\relax
\typeout{^^J^^J To Rotate Table, you must type in ^^J
\string\usepackage[(your driver program)]\string{graphicx\string}^^J^^J}\error\fi
\def\@captype{table}
\setbox0=\vbox\bgroup\hsize=\textheight\relax}

\def\endrotatetable{\egroup
\rotatebox{90}{\vbox{\copy0}}}


\def\rotatefigure{\expandafter\ifx\csname rotatebox\endcsname\relax
\typeout{^^J^^J To Rotate Figure, you must type in ^^J
\string\usepackage[(your driver program)]\string{graphicx\string}^^J^^J}\error\fi
\def\@captype{figure}
\setbox0=\vbox\bgroup\hsize=\textheight\relax}

\def\endrotatefigure{\egroup
\rotatebox{90}{\vbox{\copy0}}}

%%% easy way to do bold math
\def\dobold#1{\hbox{\boldmath$#1$\unboldmath}}

\def\boxit#1{{\ifmmode
\fbox{$\displaystyle #1$}
\else
\vskip14pt{\centerline{\fbox{\vtop{\vskip-9pt\vskip1sp\advance\hsize-41pt #1\vskip-8pt}}}\vskip14pt}\fi}}

%%% Edited Book Macros:

\font\chapauthorfont=cmcsc10
\font\chapaffilfont=\timesroman at 9pt

\def\chapteraffil#1{\vskip6pt
\noindent{\let\affilmark\newaffilmark\chapaffilfont\ignorespaces #1\vskip1sp}}
\def\saveaffilmark#1{$^{#1}$}
\def\newaffilmark#1{\leftskip4pt\hbox to0pt{\hss\hbox to 4pt{$^{#1}$}}}
\def\eatone#1{}

\newdimen\chapskip
\chapskip=26pt
\newdimen\chapheight
\chapheight=6pt
\def\chapterauthors#1{\vbox to0pt{\vglue-1in
\let\affilmark\saveaffilmark\chapauthorfont #1\vrule height 10pt width0pt\ }
{\let\chapteraffil\eatone\let\affilmark\eatone
\addtocontents{toc}{\vskip-\chapheight\noindent\vrule height 9pt width0pt\hskip\chapskip#1\hfill\vskip6pt}}\ \vskip2pt\vskip1pt}

\def\contributors{\chapter*{CONTRIBUTORS}
\vskip1sp
\leftskip=10pt
\parindent-10pt
\vskip-2pt
\everypar={}
\def\footnote##1{\hskip-10pt\savefootnote{##1}\hskip10pt}
\setcounter{page}{5}
\global\titletrue
\markboth{CONTRIBUTORS}{CONTRIBUTORS}}

\def\endcontributors{\newpage\markboth{}{}}

\def\name#1{\vskip2pt\fakesc #1*\hskip10pt}

\endinput

Changes:
October 6, 2008
Added macros for edited book: 
\begin{contributors}...\end{contributors}
\name{}

\chapterauthors{
\chapteraffil{}
}

Which will send author names to TOC, but not affil info.

October 2, 2008
Changed endexample to have space between it and the
following text, with the following line not be indented.

May 6, 2008
Use \sc for small caps in prefaceauthor instead of
\fakesmallcaps, assuming that authors have ready access
to the small caps font by this time.

May 5, 2008
Made \latexprintindex use "Topic Index" if it
is preceded by \printauthorindex

May 4, 2008
Made author index start on odd page and have offprintinfo
at the bottom; made topic index have offprintinfo at the bottom
of page also.

Nov 9, 2007
Fixed bug in appendix Thanks, so we don't have
asterisk appearing when there isn't a thanks footnote.

April 15, 2007
Changes to \prob and \subprob so that they
use the appendix letter when in the appendix.

Mar 6
Skip added to \endexample to keep indentation until
end of example

Feb 12, 2007
Made running heads Always be uppercase

Feb 11, 2007
Made tabular print in 9 pt by default

Jan 16, 2007
Fixed \label so that it now works within all section
heads and in the chapter argument.

July 14, 2005
Made Topic Index go to toc only if Topic Index and Author
index are used.

Jan 6, got rid of period after figure and table numbers
so that references will not have gratuitous period.

Jan 25
changes to index macros, so that the first page
of author index or topic index (whichever is the
second) will have running heads on each page.
Also `Topic Index' will only be used for runninghead when
there are two kinds of index.

Jan 26
Change to chapappendix so that it looks better in toc;
More space between subsection number and text in toc;
change to l@schapter so that numbers to far right side
of page in toc.



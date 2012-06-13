Readme.txt

I. Quick Summary of Commands and Tips on Use
II. List of Files in Wiley LaTeX Monograph Package

=====================================================================
=====================================================================

================================================
I. Quick Summary of Commands for 
    Wiley WileySix.cls and WileySev.cls
================================================

Help with this package or customization is available.
Wiley LaTeX Support: 
Amy Hendrickson, amyh@texnology.com 

===============================================

===============================================
USE RIGHT SIZE! Your book will either be
6x9 or 7x10 size, ask your editor if you are not
sure which size should be used.

%% For 7 x 10 size:
\documentclass{wileySev}

%% Or, for 6 x 9 trim size
\documentclass{wileySix}

Commands in both styles are identical, only the 
page size is different.
===============================================

======================
Using PostScript fonts
======================

\usepackage{w-bookps} will bring in the
PostScript font file. The default font set is
Computer Modern. For a finished appearance
for your book, you are Strongly Recommended to use w-bookps.

You may need to edit w-bookps.sty so that the
font names match those on your system. Check the
top of w-bookps.sty for instructions.

===================================
Tip: When making your own commands,
avoiding error message
===================================
If you want to make your own command, 
for "example", for instance, and you find
that "example" has already been defined, you
can type
\let\example\relax

and you can now enter
\newtheorem{example}{Example}[chapter]

without getting an error message.

=======================
halftitle and titlepage
=======================

If your title is too wide for the titlepage
you can make the font for that page smaller
by copying the following into your .tex file,
after \usepackage{w-bookps}

\font\halftitlefont=\helveticabold at 20pt
 
and adjusting the font size a point or two smaller
until the title will fit.

The same process can be followed if there is
a problem on the titlepage.
\font\titlefont=\helveticabold at 27pt

=======================

================================================================
\offprintinfo{}{} Puts copyright info at the bottom of selected
pages automatically, but you must enter the needed text.
================================================================

Using \offprintinfo{}{} for book title, (optional subtitle), edition, 
and author. 

\offprintinfo{title, edition}{author}


If the title/subtitle is too wide, add \\ to break line
\offprintinfo{Survey Methodology,\\ Second Edition}{Robert M. Groves}

=============
Draft Version
=============
Draft version: \draft before \begin{document}
You'll get double spaced version, with draft footline

=================================
Contributors Page for Edited Book
=================================

If your book has chapters written by different authors,
you'll need a Contributors page.

Use \begin{contributors}...\end{contributors} and
then enter each author with the \name{} command, followed
by the affiliation information.

\begin{contributors}
\name{Masayki Abe,} Fujitsu Laboratories Ltd., Fujitsu Limited, Atsugi,
Japan

\name{L. A. Akers,} Center for Solid State Electronics Research, Arizona
State University, Tempe, Arizona

\name{G. H. Bernstein,} Department of Electrical and
Computer Engineering, University of Notre Dame, Notre Dame, South Bend, 
Indiana; formerly of
Center for Solid State Electronics Research, Arizona
State University, Tempe, Arizona 
\end{contributors}

========================
Contents in Brief
========================
If you want to start your book
with a Contents in Brief,
use
\contentsinbrief
You will get only the chapter titles in this section

========================
Table of Contents Advice
========================
\tableofcontents

== Line breaks in Chapter or Section but NOT in TOC
If you break lines in a chapter or section head,
you probably will not want the same breaks to appear
in the table of contents.
If you do \chapter{first line\\ second line},
then add the optional square bracket argument:
\chapter[first line second line]{first line\\ second line}.

Follow the same sequence for breaking lines in section heads,
\section[first line second line]{first line\\ second line}.

== Line breaks in the TOC
If you want line breaks in the TOC, you
can add them in the square bracket argument and not in the
actual chapter title or in other places in the chapter title:
\chapter[first line\\ second line]{first line second\\ line}.

==Start a new page in the TOC, \newpage and \eject
If you want to start a chapter heading on a new page in the TOC,
you can type this in your .tex file, before \chapter{}

\addtocontents{toc}{\string\newpage}
\chapter{This Chapter Title}

The command \newpage will start a new page in the TOC and fill in the
bottom of the previous page with white space.

If you want the entries on that page to spread out vertically
and the entries fill to the bottom of the page, use \eject
instead:
 
\addtocontents{toc}{\string\eject}
\chapter{This Chapter Title}

=====================================
Preface, and Preface to First Edition
=====================================

If you are doing a new edition of your
book and want to include the original
preface as well as a preface to the
current edition, you can use 
\begin{prefacefirst}...\end{prefacefirst}
for the original preface, and then the
normal preface command for the current 
one:

\begin{prefacefirst}
Here is the preface to the first edition.
\prefaceauthor{R. K. Watts}
\where{Madison, Wisconsin\\
September, 2001}
\end{prefacefirst}

\begin{preface}
here is a preface to the current edition
\prefaceauthor{R. K. Watts}
\where{Durham, North Carolina\\
September, 2007}
\end{preface}

================
Chapter Headings
================

Short chapter title for running head
\chapter{long title}
\markboth{short version}{short version}

Short section running head:
\section{Long version}
\markright{short version}

Short version for Table of Contents:
\chapter[Short Version]{long version}
\section[Short Version]{long version}

When using \\ to break lines in chapter title, enter
the title in square brackets without the \\
\chapter[First line Second line]
{First line\\ Second line}

For footnote in chapter title, use \thanks{}
\chapter{Chapter Title\thanks{Funded by NASA}}

========================================================
Edited Book: Author and Affiliation
========================================================

After \chapter{Chapter Title}, you can
enter the author name and embed the affiliation with
\chapterauthors{(author name, or names)
\chapteraffil{(affiliation or affiliations)}
}    

For instance:
\chapter{Chapter Title}
\chapterauthors{G. Alvarez and R. K. Watts
\chapteraffil{Carnegie Mellon University, Pittsburgh, Pennsylvania}

For separate affiliations you can use \affilmark{(number)} after
the name of a particular author and before the matching affiliation:

For instance:
\chapter{Chapter Title}
\chapterauthors{George Smeal, Ph.D.\affilmark{1}, Sally Smith,
M.D.\affilmark{2}, and Stanley Kubrick\affilmark{1}
\chapteraffil{\affilmark{1}AT\&T Bell Laboratories
Murray Hill, New Jersey\\
\affilmark{2}Harvard Medical School,
Boston, Massachusetts}
}

=======================================================
Insert PostScript Illustrations, (.eps files preferred)
=======================================================

Use the graphicx package:
\usepackage[<your driver program>]{graphicx}

For <your driver program> you have these choices:
 [dvips], [xdvi], [dvipdf], [dvipsone], [dviwindo], [emtex], [dviwin],
 [pctexps],  [pctexwin],  [pctexhp],  [pctex32], [truetex], [tcidvi],
 [oztex], [textures]

ie.
\usepackage[dvips]{graphicx}

If you don't know the name of the driver program 
(the program that translates the .dvi file to a .ps file), 
choose dvips.

========================
Rotate Tables or Figures
========================
You must use
\usepackage[dvips]{graphicx}
(Choose the right term in square brackets from the list above)

For Table: 
\begin{rotatetable}
\caption{Here is caption}
\centerline{\begin{tabular}...\end{tabular}}
\end{rotatetable}

(table caption always typed above table)

For Figure: 
\begin{rotatefigure}
\centerline{\includegraphics[width=3in]{figsamp}}
\caption{Here is a caption}
\end{rotatefigure}

(figure caption always typed below figure)

========
Examples
========
\begin{example}
asdf
\end{example}

will produce an environment which starts with a large
black square, and it is numbered, to call attention to
the example.

====================================================
Theorems etc. are not predefined in the Wiley macros
====================================================
 
You can get any of these type of environments
by using newtheorem and two arguments; the first
for the name you will type in to use the new theorem.
The second is the name as it will appear in the text.

For instance:
\newtheorem{theorem}{Theorem}
\newtheorem{lemma}{Lemma}
\newtheorem{corollary}{Corollary}

 
If you want chapter numbers as well as theorem numbers,
you can add [chapter] at the end of each, ie,
\newtheorem{theorem}{Theorem}[chapter]

The command \qed may be used to get a small square to
appear at the end of a proof.

==================================================
Problem Sets (Entering Solutions in section below)
==================================================
Make a problem set with \begin{problems}...\end{problems}

You can enter \prob for a new numbered problem, or \subprob
or \sidebysideprob{}{} or \sidebysidesubprob{}{}

\begin{problems}
\prob
Problem text.

\prob
Problem text.

\subprob
Subproblem text.

\subprob
Subproblem text.

\sidebysidesubprob{}{}

\sidebysideprob{}{}

\end{problems}

=========
Exercises
=========
Exercises are formatted the same as Problems, but
use the term "Exercises" instead.
	
Make a Exercise set with \begin{exercises}...\end{exercises}

You can enter \exer for a new numbered exercise or \subexer
or \sidebysideexer{}{} or \sidebysidesubexer{}{}

\begin{exercises}
\exer
Exercise text.

\exer
Exercise text.

\subexer
Subexercise text.

\subexer
Subexercise text.

\sidebysidesubexer{}{}

\sidebysideexer{}{}

\end{exercises}

============================================
Entering Solutions, and printing Solution section
============================================

For a solution section at the end of your book,
and the ability to enter Problem Solutions within
the Problem or Exercise sections, enter
\usepackage{answers}
before \begin{document}

Then either in the Problems or the Exercises environment,
enter the solution to each or selected problems,
or exercise, 
after either the \prob command and problem text, 
or after the\exer command and exercise text:

\begin{sol} 
Solution text
\end{sol}

For example:
\begin{problems}
\prob
First exercise

\begin{sol}
Here is the first solution
\end{sol}

\prob
Here is the second problem.

\begin{sol}
Here is the second solution
\end{sol}

\end{problems}

The problems, or exercises, will be numbered sequentially
throughout each chapter.

=================
Solutions Section
=================

At the end of the book type in

\solutions

and \solutionchap{} with the chapter number
for each chapter where
problems or exercises and solutions were written.

ie,

\solutions
\solutionchap{1}
\solutionchap{2}
\solutionappendix{A}
\solutionappendix{B}

=========
Bold Math
=========
There are two ways to use the bold math
fonts
1. \mathbf{}
$\mathbf{abc\alpha\beta\epsilon}$

But, you'll find that only abc gets bolded

2. \dobold{}
$\mathbf{abc}\dobold{\alpha\beta\epsilon}$

Will bold the math terms that don't ordinarily
get bold, 

But they will also be italicized.
(bold italic is the font that is available for these
characters)

=========
More Tips 
=========

==Words breaking over lines:

To keep a word from breaking over lines you
can put it in an hbox: \hbox{Dictionary} will
keep `Dictionary' breaking over lines. 


==Hyphenation/nonhyphenation:

You can also keep a word from breaking over
lines anywhere in the document by adding it
to the \hyphenation{} list. This command can
be used before \begin{document} and words
can be entered without hyphenation, which
will prevent them from breaking no matter
where they are found.

You can also hyphenate words, that would not
otherwise hyphenate correctly:

\hyphenation{dictionary, sym-bi-o-tic}
You can add as many terms as you want.

== Keep text on one page:

You can use \vtop{} to keep text on one page:

\vtop{\begin{example} example text \end{example}}

== Let text go down into bottom margin
Sometimes it might be helpful to have an extra
line or two on your current page. You can
use 
\vtop to 0pt{text... \vss}\newpage

which will allow the text to continue down
below the normal bottom margin.

== Skips before section heads
Some LaTeX commands have the capability built
in that they will get rid of the previous vertical
skip.

Thus, if you want less space before a particular section
head you might type \vskip-14pt\section{Here is section}
and be surprised that the spacing doesn't change. This
is because an \unskip command is built into the definition
of \section{}. To get around this, supply a very small 
skip and then the skip you want. The \section command
will eat the small skip, and the skip you want will now
work:

\vskip-14pt
\vskip1sp
\section{Here is the section head}

== Centering multiline captions
This will work for either figure or table caption,
but if you want to center a multiply lined caption
over a centered table, for instance, you can type

\begin{table}
\caption{\vtop{\hbox{first line of caption}
\hbox{Second line of caption}{Third line of caption}
}%end \vtop{
}%end \caption{

\centering
\begin{tabular}
...
\end{tabular}

\end{table}

Results will be

Table 1.1 First Line of caption
          Second line of caption
          Third line of caption

and the caption will be centered over the table

=================
Indexing Commands
=================
You can use either the Wiley indexing commands or
the default LaTeX indexing commands.

When to use Wiley index commands; when to use default LaTeX
index commands? If you use symbols in index, and want to
use verbatim, ie, \index{\verb+&%$+}, use default LaTeX index system.

Otherwise, use the Wiley indexing commands

=====================================
Quick Summary of Wiley Index Commands
=====================================

For terms to be indexed, use \inxx{term}

For subterm
\inxx{term,second term}

For subsubterm
\inxx{term,second term,third term}

To produce the index

1) Run Latex on file,

2) Run sort routine on file 
(ie. {\tt`sort  filename.inx > filename.srt'} 
on DOS, other commands on other systems), 
to produce a filename.srt file.

IMPORTANT: Edit the .srt file to make sure ~ is at the End of the
file. 

3) Enter \printindex at end of book.
This command will input filename.srt and print the index.

The index will be in two columns, sequences of page numbers for the same
entry will automatically have a dash between them, and subheadings will
fall underneath their major headings.

You can enter index commands in a figure or table caption, but
please precede it with \protect, \protect\inxx{term}


=============================================
Quick Summary of Default LaTeX Index Commands
=============================================

Unlike the usual way of starting the index, do NOT
write \usepackage{makeidx} after \documentclass. If you
do you will get an error message.

You must write \makeindex before \begin{document} to
open the file where the index information will be entered.
 
In the body of your document, write in \index{term} to have
>term< appear in the index. For a subentry, 
write the primary entry followed by an exclamation mark, i.e., 
\index{trees!pointy}. For a subsub entry, follow a similar
sequence: \index{trees!pointy!green}
 
When you run LaTeX on the file it will produce an .idx file.
If you run each chapter separately you will have to combine all
the separate .idx files into one file.
 
To alphabetize the index, you use the separate program, makeindx,
entered on the command line. 

makeindx filename

This will produce filename.ind

Now you may write \latexprintindex in your file, 
which will bring in the new filename.ind, formatted in two columns.
Note: \latexprintindex is used, not \printindex.

==========================================================
==========================================================

========================================================
II. List of Files in Wiley LaTeX Monograph Package
--------------------------------------------------

Choose one:
wileysix.cls    Basic LaTeX macro file, used \documentclass{wileysix}
wileysev.cls    Basic LaTeX macro file, used \documentclass{wileysev}


w-bookps.sty  PostScript font file. You will probably need to edit this
              file to enter the PS font names found on your system

m-times.sty   MathTime font file. (use only if you have MathTimes fonts)

Template and Sample files
-------------------------
w-bktmpl.tex  Template file, for authors to use in making their own book.

w-bksamp.tex  Sample file, showing different title page styles and other
              commands unique to this package. 

w-bksamp.ind  Sample index file to use with default LaTeX index

w-bksamp.srt  Sample file index file with Wiley index system

w-bksamp.att  Sample file to produce author index

Inserting .eps files
--------------------
graphics.zip  Graphics files, including graphicx.sty, used for
              including .eps files.

figsamp.eps   Figure sample file, showing the use of the graphicx.sty
              commands for inserting .eps files, landscape tables and
              figures, in a single column and in a full page.

wileylogo.eps File to produce Wiley logo on titlepage of book.

Documentation
-------------
w-bkdocs.tex  Documentation in LaTeX form. You may run LaTeX on this 
              file and print it on your printer, or see it with your 
              LaTeX preview program.

w-bkdocs.pdf  Documentation in PDF form. Use Acrobat Reader to view it.

Bibliography
------------
w-bksamp.bbl  Sample bibliography file 
sampbib.bib   Sample bibliography database file


-------------------
answers.sty

Extra .sty file to make it possible to type in
problem solutions where the problem is found, but
have the solution appear in a solutions section at
the end of the book.

Scientific Word
---------------
swp.txt  Concise intructions for using the WileySix and WileySev macros with SW

WileySix.shl
WileySev.shl
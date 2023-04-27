%% This code is distributed under the CC-BY 4.0 license
%% Details at LICENSE
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ruthesis2}[2023/03/16 Reykjavik University Thesis 2]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions\relax
\LoadClass{memoir}

% Make sure we can use UTF8 for all documents
\RequirePackage{iftex}
\ifLuaTeX\relax\else\PassOptionsToPackage{utf8}{inputenc}\RequirePackage{inputenc}\fi

% STIX2 Font
\ifLuaTeX
\RequirePackage{fontspec}
\RequirePackage{unicode-math}
\setmathfont{STIXTwoMath-Regular}[
Extension={.otf},
Scale=1]
\setmainfont{STIXTwoText}[
Extension={.otf},
UprightFont={*-Regular},
BoldFont={*-Bold},
ItalicFont={*-Italic},
BoldItalicFont={*-BoldItalic}]
\else
% We only support a subset of the needed characters
% with pdflatex. Be prepared that some characters may be missing from the output.
\RequirePackage{stix2}
\PassOptionsToPackage{T1}{fontenc}
\RequirePackage{fontenc}
\fi

% Provide commands for referencing web resources.
\RequirePackage{url}
\RequirePackage{doi}
\RequirePackage{orcidlink}

% To typeset the logo:
\RequirePackage{rulogo}

% This is to configure the title page by hooking into the maketitle
% command
\newcommand{\thedocument}{Dissertation}
\newcommand{\thedepartment}{Department of Embarrassment}
\newcommand{\thedegree}{Doctor of Ignorance}

\aliaspagestyle{title}{empty}
%\renewcommand{\maketitlehooka}{}
%\renewcommand{\pretitle}{}
%\renewcommand{\posttitle}{}
%\renewcommand{maketitlehookb}{}
%\renewcommand{\preauthor}{}
%\renewcommand{\postauthor}{}
\renewcommand{\maketitlehookc}{%
  \begin{center}
    {\thedocument} submitted to the\\
    {\thedepartment} at Reykjavík University\\
    in partial fulfilment of the requirements for the degree of\\
    \begingroup\thedegree\endgroup
  \end{center}}
%\renewcommand{\predate}{}
%\renewcommand{\postdate}{}
\renewcommand{\maketitlehookd}{%
  \vfill
  \begin{center}
    \RULogo{0.2}\\[\baselineskip]
    Reykjavik University\\
    Menntavegur 1, 102 Reykjavík, Ísland
  \end{center}}

\NeedsTeXFormat{LaTeX2e}
\LoadClass[12pt,a4paper]{article}
\ProvidesClass{psychol}

\RequirePackage{polski}
\RequirePackage[margin=2.5cm]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{tgtermes}
\RequirePackage{setspace}
\RequirePackage{amssymb}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{indentfirst} %wcięcie pierwszego akapitu rozdziału - zgodnie z polską normą
\RequirePackage{tocloft}

\fancyhf{}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\rhead{\small{\thepage{}}}
\renewcommand{\thesection}{\hspace*{-1.0em}}
\renewcommand{\thesubsection}{\hspace*{-1.0em}}
\renewcommand{\thesubsubsection}{\hspace*{-1.0em}}


\newcommand{\Section}[1]{\section{\sc #1}} %Tu kapitaliki jak napisałeś...
%\newcommand{\Section}[1]{\section{\MakeUppercase{#1}}} %...a tu wersalikami jak zapewne chciałeś :-P

\setcounter{tocdepth}{4}
\setcounter{secnumdepth}{4}

\cftsetindents{section}{0cm}{0cm}
\cftsetindents{subsection}{0.5cm}{0cm}
\cftsetindents{subsubsection}{0cm}{1cm}
\cftsetindents{paragraph}{0cm}{1.5cm}

\graphicspath{ {images/} }

\newcommand{\apaartykul}[6]{\noindent
\hangindent=0.5cm
#1 (#2). #3. \textit{#4}, \textit{#5} s. #6}

\makeatletter
\def\@maketitle{%
  \newpage
  \doublespacing
  \thispagestyle{empty}
  \begin{center}%
  \large
  Uniwersytet Warszawski
  
  Wydział Psychologii
  
  \vskip 2em
  \normalsize
  \@author
  
  \ifdefined\album
  Nr albumu: \album
  \fi
  \vskip 4.5em
    {\Large \textbf{\@title} \par}%
    \vskip 2em%
\normalsize
Praca na Umiejętności akademickie

na kierunku Psychologia
\vskip 6em
\flushright
\setlength{\parskip}{.5em}
\vspace{\fill}
Praca wykonana pod kierunkiem

\kierownik

Wydział Psychologii Uniwersytetu Warszawskiego

Katedra Psychologii Różnic indywidualnych

\centering
\vspace{\fill}
Warszawa dn. \@date
\newpage
  \vskip 1.5em}

\makeatother

\doublespacing
\tocloftpagestyle{empty}




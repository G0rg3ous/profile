\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2015/05/25 An elegant Résumé class]
\LoadClass[10pt]{article}

% disable indent globally
\setlength{\parindent}{0pt}
% some general improvements, defines the XeTeX logo
\RequirePackage{xltxtra}
% use xifthen
\RequirePackage{xifthen}
% use hyperlink for email and url
\RequirePackage{hyperref}
\hypersetup{hidelinks}
\RequirePackage{url}
\urlstyle{tt}
% use fontawesome
\RequirePackage{fontawesome5}
% use xcolor for customizing color
\RequirePackage{xcolor}
\definecolor{accent}{HTML}{284D68}
\definecolor{ruleblue}{HTML}{50798B}
\definecolor{rulegold}{HTML}{BE9B60}
\definecolor{bodytext}{HTML}{444444}
\RequirePackage{tikz}
\RequirePackage{eso-pic}
\AtBeginDocument{\color{bodytext}\fontsize{10.5pt}{15pt}\selectfont}
% A subtle left rail, matching the reference resume.
\AddToShipoutPictureBG{%
  \AtPageLowerLeft{%
    \begin{tikzpicture}[overlay]
      \draw[ruleblue,line width=0.45pt]
        (0.90cm,1.0cm) -- (0.90cm,\dimexpr\paperheight-4.8cm\relax);
    \end{tikzpicture}%
  }%
}
% loading fonts
\RequirePackage{fontspec}
% Main document font
\setmainfont{TeX Gyre Termes}

\RequirePackage[
	a4paper,
	left=1.15cm,
	right=1.15cm,
	top=0.45in,
	bottom=0.45in,
	nohead
]{geometry}

\RequirePackage{titlesec}
\RequirePackage{enumitem}
\setlist{noitemsep} % removes spacing from items but leaves space around the whole list
%\setlist{nosep} % removes all vertical spacing within and around the list
\setlist[itemize]{topsep=2pt,itemsep=1pt,parsep=0pt,leftmargin=1.3em}
\setlist[enumerate]{topsep=2pt,itemsep=2pt,parsep=0pt,leftmargin=1.5pc}
\RequirePackage[super]{nth}

% Colored section title and slim blue/gold separator.
\newcommand{\cvsectionrule}{%
  \par\nobreak\vspace{1pt}%
  \begin{tikzpicture}
    \path[use as bounding box] (0,0) rectangle (\linewidth,0.8mm);
    \fill[rulegold] (0,0) rectangle (\linewidth,0.28mm);
    \fill[ruleblue] (0,0) -- (0,0.8mm) -- (0.35\linewidth,0.8mm)
      -- (\dimexpr0.35\linewidth+2mm\relax,0) -- cycle;
  \end{tikzpicture}%
}
\titleformat{\section}
  {\large\bfseries\raggedright\color{accent}}{}{0em}{}[\cvsectionrule]
\titlespacing*{\section}{0pt}{7pt}{3pt}

\titleformat{\subsection}
  {\normalsize\raggedright}
  {}{0em}
  {}
\titlespacing*{\subsection}{0cm}{5pt}{2pt}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}
\newcommand{\datedline}[2]{%
  {\par #1 \hfill #2 \par}%
}

\newcommand{\name}[1]{
  \centerline{\Huge\scshape{#1}}
  \vspace{1.25ex}
}

% defines one's name
% usage: \name{<name>}
\newcommand{\nameTest}[1]{
  {\large\scshape{#1}}
}

% defines one's email
% usage: \email{<email>}
\newcommand{\email}[1]{\faEnvelope\ \href{mailto:#1}{\nolinkurl{#1}}}
% defines one's phone
% usage: \phone{<phone>}
\newcommand{\phone}[1]{\faPhone\ {#1}}
% defines one's linkedin
% usage: \linkedin{<linkedin>}
\newcommand{\linkedin}[2][]{\faLinkedin\ 
  \ifthenelse{\isempty{#1}}%
    {\href{#2}{#2}}
    {\href{#2}{#1}}}
\newcommand{\linkedinsquare}[2][]{\faLinkedinSquare\ 
  \ifthenelse{\isempty{#1}}%
    {\href{#2}{#2}}
    {\href{#2}{#1}}}
% defines one's GitHub
% usage: \github{<github>}
\newcommand{\github}[2][]{\faGithub\ 
  \ifthenelse{\isempty{#1}}%
    {\href{#2}{#2}}
    {\href{#2}{#1}}}
% defines one's homepage
% usage: \homepage{<homepage>}
\newcommand{\homepage}[2][]{\faLink\ 
  \ifthenelse{\isempty{#1}}%
    {\href{#2}{#2}}
    {\href{#2}{#1}}}

\newcommand{\basicInfo}[1]{
  \centerline{\sffamily\large{#1}}
  \vspace{1.5ex}
}

\newcommand{\role}[2]{
  {\par \textit{#1} ~ #2 \par}
  \vspace{2pt}
}

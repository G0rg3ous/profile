\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2026/11/27 Compact academic resume]
\LoadClass[10pt]{article}

\RequirePackage{fontspec}
\setmainfont{TeX Gyre Termes}
\RequirePackage{xcolor}
\definecolor{accent}{HTML}{243E52}
\definecolor{bodytext}{HTML}{242424}
\RequirePackage[a4paper,left=1.4cm,right=1.4cm,top=1.1cm,bottom=1.1cm,nohead,nofoot]{geometry}
\RequirePackage{hyperref}
\hypersetup{hidelinks}
\RequirePackage{url}
\urlstyle{same}
\RequirePackage{fontawesome5}
\RequirePackage{xifthen}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{tabularx}
\RequirePackage[super]{nth}

\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}
\setlength{\tabcolsep}{0pt}
\pagestyle{empty}
\raggedbottom
\AtBeginDocument{\color{bodytext}\fontsize{10.5pt}{14.2pt}\selectfont}
\setlist[itemize]{topsep=1.5pt,itemsep=0.5pt,parsep=0pt,partopsep=0pt,leftmargin=1.3em}
\setlist[enumerate]{topsep=1.5pt,itemsep=1pt,parsep=0pt,partopsep=0pt,leftmargin=1.5pc}

% Simple headings with a single thin rule.
\titleformat{\section}
  {\fontsize{12pt}{14pt}\selectfont\bfseries\color{accent}}
  {}{0pt}{}[\vspace{1pt}{\color{accent!45}\titlerule[0.4pt]}]
\titlespacing*{\section}{0pt}{6pt}{3pt}
\titleformat{\subsection}{\normalsize\bfseries}{}{0pt}{}
\titlespacing*{\subsection}{0pt}{4pt}{1pt}

\newcommand{\datedsection}[2]{\section{#1\hfill{\normalfont\small #2}}}
% Wrap long titles while keeping the date in its own right-hand column.
\newcommand{\datedsubsection}[2]{%
  \par\addvspace{4pt}\noindent
  \begin{tabularx}{\linewidth}{@{}>{\raggedright\arraybackslash}X@{\hspace{8pt}}r@{}}
    \textbf{#1} & {\small #2}\\
  \end{tabularx}\par\nobreak\vspace{1pt}%
}
\newcommand{\datedline}[2]{%
  \par\noindent
  \begin{tabularx}{\linewidth}{@{}>{\raggedright\arraybackslash}X@{\hspace{8pt}}r@{}}
    #1 & {\small #2}\\
  \end{tabularx}\par
}
\newcommand{\name}[1]{{\centering\fontsize{24pt}{28pt}\selectfont\bfseries #1\par}\vspace{4pt}}
\newcommand{\nameTest}[1]{{\large\bfseries #1}}
\newcommand{\email}[1]{\faEnvelope\ \href{mailto:#1}{\nolinkurl{#1}}}
\newcommand{\phone}[1]{\faPhone\ #1}
\newcommand{\linkedin}[2][]{\faLinkedin\ \ifthenelse{\isempty{#1}}{\url{#2}}{\href{#2}{#1}}}
\newcommand{\linkedinsquare}[2][]{\linkedin[#1]{#2}}
\newcommand{\github}[2][]{\faGithub\ \ifthenelse{\isempty{#1}}{\url{#2}}{\href{#2}{#1}}}
\newcommand{\homepage}[2][]{\faLink\ \ifthenelse{\isempty{#1}}{\url{#2}}{\href{#2}{#1}}}
\newcommand{\basicInfo}[1]{{\centering\small #1\par}\vspace{3pt}}
\newcommand{\role}[2]{\par{\small\textit{#1}\quad #2}\par\vspace{1pt}}

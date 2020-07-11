\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{oakpaper}[2020/04/11 Omkar Katta Paper class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}


\RequirePackage{indentfirst}

\RequirePackage{titlesec}
\titleformat{\section}{\Large\bfseries\centering}{\thesection.}{1em}{} %\MakeUppercase
\titlespacing*{\section}{0em}{0.5em}{.5em}[0em]
% \renewcommand \thesection{\Roman{section}}
\titleformat{\subsection}{\bfseries\centering\large}{\thesubsection.}{1em}{}
\titlespacing*{\subsection}{0em}{0.5em}{.5em}[0em]
\titleformat{\subsubsection}[runin]{\bfseries\normalsize}{}{0em}{}[.]
\titlespacing*{\subsubsection}{0em}{0.5em}{3pt}[0em]


\addtolength{\oddsidemargin}{-.875in}
\addtolength{\evensidemargin}{-.875in}
\addtolength{\textwidth}{1.75in}
\addtolength{\topmargin}{-.875in}
\addtolength{\textheight}{1.75in}

\setlength{\parindent}{1.5em}
\setlength{\parskip}{0em}

\renewenvironment{abstract}{%
    {\centerline{\bfseries\MakeUppercase{Abstract}}} 
    \vspace{1em}
}

\def\title#1{\gdef\@title{#1}}
\def\@title{\@latex@warning@no@line{No \noexpand\title given}}
\def\name#1{\gdef\@name{#1}}
\def\@name{\@latex@warning@no@line{No \noexpand\name given}}
\def\task#1{\gdef\@task{#1}}
\def\@task{\@latex@warning@no@line{No \noexpand\task given}}
\def\supervisor#1{\gdef\@supervisor{#1}}
\def\@supervisor{\@latex@warning@no@line{No \noexpand\supervisor given}}
\def\due#1{\gdef\@due{#1}}
\def\@due{\@latex@warning@no@line{No \noexpand\due given}}

%\def\subtitle#1{\gdef\@subtitle{#1}}
%\def\@subtitle{\@latex@warning@no@line{No \noexpand\subtitle given}}

\renewcommand{\maketitle}{%
    \noindent\rule{\textwidth}{1.5pt}\\[10pt]
    {\large \textbf{\@name} \hfill \@due} \\[\baselineskip]
    {\LARGE\centerline{\textbf{\@title}}} \\[0.75\baselineskip]
    {\normalsize \@task \hfill \@supervisor} 
    \rule{\textwidth}{1.5pt}
}




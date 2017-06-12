%% tracv.cls
%% Copyright 2017 Arman Bilge <armanbilge@gmail.com>
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
%
% The Current Maintainer of this work is Arman Bilge <armanbilge@gmail.com>.
%
% This work consists of the file tracv.cls.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tracv}[2017/06/12 v0.3 Style derived from Tracy Heath's CV]

\ProcessOptions\relax

\LoadClassWithOptions{article}

\RequirePackage{changepage}
\RequirePackage{hanging}
\RequirePackage{parskip}
\PassOptionsToPackage{parfill}{parskip}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\lhead{\textsc{\namea}}
\chead{C.V.}
\rhead{\thepage}
\cfoot{}
\newcommand{\resetHeadWidth}{\fancy@setoffs}

\RequirePackage{hyperref}

\newlength{\mytextsize}
\makeatletter
  \setlength{\mytextsize}{\f@size pt}
\makeatother

\newcommand{\myurl}[1]{\href{http://#1}{\texttt{#1}}}

\newcommand{\name}[1]{
    \newcommand{\namea}{#1}
}

\newcommand{\address}[4]{
    \newcommand{\addressa}{#1}
    \newcommand{\addressb}{#2}
    \newcommand{\addressc}{#3}
    \newcommand{\addressd}{#4}
}

\newcommand{\email}[1]{
    \newcommand{\emaila}{\href{mailto:#1}{\texttt{#1}}}
}

\newcommand{\website}[1]{
    \newcommand{\websitea}{\myurl{#1}}
}

\newcommand{\account}[1]{
    \newcommand{\accounta}{\texttt{#1}}
}

\newcommand{\phone}[1]{
    \newcommand{\phonea}{#1}
}

\newcommand{\head}{

    \resetHeadWidth
    \thispagestyle{empty}

    \centering
    \Large \textsc{Curriculum Vitae}
    \vspace{0.5\baselineskip}

    \raggedright
    \LARGE \textbf{\namea} \hfill \normalsize \\
    \addressa \hfill \phonea \\
    \addressb \hfill \emaila \\
    \addressc \hfill \websitea \\
    \addressd \hfill \accounta \\

    \hfill \\
}

\renewcommand{\section}[1]{
    {
        \LARGE
        \textsc{#1} \\
        \vspace{\mytextsize}
        \hrule
    }
    \vspace{0.5\baselineskip}
}

\newenvironment{columnsection}[1]{
    \section{#1}
    \begin{adjustwidth}{1em}{1em}
}{
    \end{adjustwidth}
}

\newcommand{\columnentry}[7]{

    \ifx&#3&%
        #1 \hfill #2 \vspace{-0.5\mytextsize}
    \else
        \textbf{#1} \hfill \textbf{\emph{#2}} \\
        #3 \hfill #4
        \ifx&#5&\else
            \\ #5 \hfill #6
            \ifx&#7&\else
                \\ #7
            \fi
        \fi
    \fi

% ^ Blank line necessary to avoid a small whitespace
}

\newenvironment{hangingsection}[1]{
    \section{#1}
    \begin{adjustwidth}{3em}{1em}
}{
    \end{adjustwidth}
}

\newcommand{\hangingentry}{
    \hspace{-2em}
}

\newcommand{\datedhangingentry}[2]{
    \hspace{-2em} #2 \hfill #1
}

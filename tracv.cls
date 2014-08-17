\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tracv}[2014/08/17 v0.1 Style derived from Tracy Heath's CV]

\ProcessOptions\relax

\LoadClassWithOptions{article}

\RequirePackage{changepage}
\RequirePackage{hanging}
\RequirePackage{parskip}
\PassOptionsToPackage{parfill}{parskip}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\lhead{\textsc{\authora}}
\chead{C.V.}
\rhead{\thepage}
\cfoot{}

\newlength{\mytextsize}
\makeatletter
  \setlength{\mytextsize}{\f@size pt}
\makeatother

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
    \newcommand{\emaila}{\texttt{#1}}
}

\newcommand{\website}[1]{
    \newcommand{\websitea}{\texttt{#1}}
}

\newcommand{\phone}[1]{
    \newcommand{\phonea}{#1}
}

\newcommand{\head}{

    \thispagestyle{empty}
    
    \centering
    \Large \textsc{Curriculum Vitae}
    \vspace{0.5\baselineskip}
    
    \raggedright
    \LARGE \textbf{\namea} \hfill \normalsize \\
    \addressa \\
    \addressb \hfill \phonea \\
    \addressc \hfill \emaila \\
    \addressd \hfill \websitea \\
    
    \hfill \\
}

\newenvironment{columnsection}[1]{
    \LARGE
    \textsc{#1} \\
    \vspace{\mytextsize}
    \hrule
    \normalsize
    \vspace{0.5\baselineskip}
    \begin{adjustwidth}{1em}{1em}
}{
    \end{adjustwidth}
}

\newcommand{\columnentry}[7]{
    \textbf{#1} \hfill \textbf{\emph{#2}} \\
    #3 \hfill #4
    \ifx&#5&\else
        \\ #5 \hfill #6
        \ifx&#7&\else
            \\ #7
        \fi
    \fi
    
}

\newenvironment{hangingsection}[1]{
    \LARGE
    \textsc{#1} \\
    \vspace{\mytextsize}
    \hrule
    \normalsize
    \vspace{0.5\baselineskip}
    \begin{adjustwidth}{3em}{1em}
}{
    \end{adjustwidth}
}

\newcommand{\hangingentry}{
    \hspace{-2em}
}
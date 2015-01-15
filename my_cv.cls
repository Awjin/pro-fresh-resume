% CV Class
% Awjin Ahn, 12.14.14
% 
% https://www.sharelatex.com/blog/2011/03/27/how-to-write-a-latex-class-file-and-design-your-own-cv.html

\LoadClass[10pt, letterpaper]{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}

\RequirePackage[margin=0.75in]{geometry}
\RequirePackage{changepage}
\RequirePackage{titlesec}
\RequirePackage{setspace}
\RequirePackage{xcolor}
\RequirePackage{enumitem}

\pagenumbering{gobble}       % remove page numbers

%% 
% Name
% 
\newcommand{\name}[1] {
  \centerline{
    \huge{\sffamily{#1}}
  }
  \vspace{1.5em}
}


%% 
% Contact Info
% 
\newcommand{\contact}[6] {
  \sffamily{
    \centerline{
      \makebox[0pt][l]{#1} \hfill
      \makebox[0pt][c]{#3} \hfill
      \makebox[0pt][r]{#5}
    }
    \centerline{
      \makebox[0pt][l]{#2} \hfill
      \makebox[0pt][c]{#4} \hfill
      \makebox[0pt][r]{#6}
    }
  }
  \vspace{0.5em}
}


%% 
% Section
% 
\titleformat{\section}
{\Large\sffamily\color{gray}}
{}{0em}            % prefix a string to all sections (default: none)
{}                 % code before the heading (default: none)
[\vspace{-0.2em}]  % control margin under header


%% 
% Entry
% 
\newcommand{\entryA}[2] {
  \sffamily{
    \noindent \hspace{1em} \textbf{#1} \hfill \color{gray}{#2}
    \vspace{-0.35em}
  }
}


%% 
% Entry with secondary
% 
\newcommand{\entryB}[3] {
  \sffamily{
    \noindent \hspace{1em} \textbf{#1}, #2 \hfill \color{gray}{#3}
    \vspace{-0.35em}
  }
}


%% 
% Entry Detail
% 
\setlist[1]{itemsep=-0.2em,leftmargin=2.75em}
\newcommand{\entrydetail}[1] {
  \small{
    \item
    \begin{adjustwidth}{0em}{8.25em}  % set left and right margins
      \rmfamily{#1}
    \end{adjustwidth}
  }
}


%% 
% Prose
% 
\newcommand{\prose}[1] {
  \begin{adjustwidth}{1.4em}{0.4em}
    \rmfamily{#1}
  \end{adjustwidth}
}


%% 
% Prose Detail
% 
\newcommand{\prosedetail}[1] {
  \item
    \begin{adjustwidth}{0em}{0.4em}
      \rmfamily{#1}
    \end{adjustwidth}
}


%% 
% Small Bullets
% 
\renewcommand{\labelitemi} {
  $\cdot$
}
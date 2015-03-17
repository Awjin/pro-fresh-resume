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
    \sffamily{
      \huge{#1}
    }
  }
  \vspace{.75em}
}


%% 
% Contact Info
%
\newcommand{\contact}[4] {
    \centerline{
      \sffamily{
        \color{gray}{
          #1 \hspace{.25em} $\cdot$ \hspace{.25em} #2 \hspace{.25em} $\cdot$ \hspace{.25em}
          #3 \hspace{.25em} $\cdot$ \hspace{.25em} #4
      }
    }
  }
  \vspace{.5em}
}


%% 
% Section
% 
\titleformat{\section}
{\sffamily\Large}
{}{0em}           % prefix a string to all sections (default: none)
{}                % code before the heading (default: none)
[\vspace{-.2em}]  % control margin under header


%% 
% Entry
% 
\newcommand{\entryA}[2] {
  \sffamily{
    \noindent \hspace{1em} #1 \hfill \small{\color{gray}{#2}}
    \vspace{-.5em}
  }
}


%% 
% Entry with secondary
% 
\newcommand{\entryB}[3] {
  \sffamily{
    \noindent \hspace{1em} #1, \ \color{darkgray}{#2} \hfill \small{\color{gray}{#3}}
    \vspace{-.5em}
  }
}


%% 
% Entry Detail
% 
\setlist[1]{itemsep=-.2em,leftmargin=2.75em}
\newcommand{\entrydetail}[1] {
  \small{
    \item
    \begin{adjustwidth}{0em}{8.25em}  % set left and right margins
      \color{gray}\sffamily{#1}
    \end{adjustwidth}
  }
}


%% 
% Prose
% 
\newcommand{\prose}[1] {
  \begin{adjustwidth}{1.3em}{.4em}
    \rmfamily{#1}
  \end{adjustwidth}
}


%% 
% Prose Detail
% 
\newcommand{\prosedetail}[1] {
  \item
    \begin{adjustwidth}{0em}{.4em}
      \rmfamily{#1}
    \end{adjustwidth}
}


%% 
% No Bullets
% 
\renewcommand{\labelitemi} {}
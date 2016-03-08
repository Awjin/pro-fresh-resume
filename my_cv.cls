% CV Class
% Awjin Ahn, 8.09.15
%
% Values most likely to be tweaked (margins, spacing between items)
% are commented for easy spotting

\LoadClass[11pt, letterpaper]{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}

\RequirePackage[T1]{fontenc}
\RequirePackage{changepage}
\RequirePackage{titlesec}
\RequirePackage{setspace}
\RequirePackage{xcolor}

\RequirePackage[margin=1in]{geometry}        % page margins
\pagenumbering{gobble}                       % no page numbers
\setlength\parindent{0em}                    % no indents
\renewcommand{\familydefault}{\sfdefault}    % sans serif font
\color{darkgray}                             % text color


%
% Header
% 
\newcommand{\header}[3] {
  {\color{black}{\hspace{-.4em} {\Huge{#1}} \hfill #2 \hspace{1.75em} #3}}
  \vspace{2.5em}    % margin below Header
}


%
% Section
% 
\titleformat{\section}
{\vspace{-.5em} \Large}    % margin above Section name
{}{0em}
{}
[\vspace{0em}]             % margin below Section name


%
% Entry
% 
\newcommand{\entry}[3] {
  {\hspace{1.5em} \color{black}{\textbf{#1}} \hspace{.4em} #2 \hfill \small{\color{gray}{#3}}}
  \vspace{.2em}    % margin below Entry
}


%
% Detail
% 
\newcommand{\detail}[1] {
  \begin{adjustwidth}{1.9em}{8.2em}
    \small{#1}
  \end{adjustwidth}
  \vspace{1em}    % margin below each Detail
}

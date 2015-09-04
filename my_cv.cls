% CV Class
% Awjin Ahn, 8.09.15
%
% Values most likely to be tweaked (margins, spacing between items, etc.) are commented.

\LoadClass[11pt, letterpaper]{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}

\RequirePackage[T1]{fontenc}
\RequirePackage{changepage}
\RequirePackage{titlesec}
\RequirePackage{setspace}
\RequirePackage{xcolor}

\RequirePackage[margin=1in]{geometry}        % page margins
\pagenumbering{gobble}                       % remove page numbers
\setlength\parindent{0em}                    % remove indents
\renewcommand{\familydefault}{\sfdefault}    % set font to sans serif
\color{darkgray}                             % body text color


%
% Header
% 
\newcommand{\header}[3] {
  {\color{black}{\hspace{-.4em} {\Huge{#1}} \hfill #2 \hspace{1.75em} #3}}
  \vspace{2.5em}    % margin under Header
}


%
% Section
% 
\titleformat{\section}
{\vspace{-.5em} \Large}  % margin above Section header
{}{0em}
{}
[\vspace{0em}]            % margin under Section header


%
% Entry
% 
\newcommand{\entry}[3] {
  {\hspace{1.5em} \color{black}{\textbf{#1}} \hspace{.4em} #2 \hfill \small{\color{gray}{#3}}}
  \vspace{.2em}    % margin under Entry
}


%
% Detail
% 
\newcommand{\detail}[1] {
  \begin{adjustwidth}{1.9em}{8.2em}
    \small{#1}
  \end{adjustwidth}
  \vspace{1em}    % margin under each Detail
}

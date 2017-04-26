# A Latex Résumé Template

![Resume sample](https://github.com/Awjin/pro-fresh-resume/blob/master/sample.png)

## Usage

### Import the Class
Put `\documentclass{resume}` at the top of your tex file.

### Header
First field is large and left-aligned. Remaining entries are right-aligned.
```
\header{name}{email}{phone}
```

### Section
Use these to organize the body.
```
\section{Education}

\section{Employment}
```

### Entry
Fields 1 and 2 are left-aligned, field 3 is right-aligned.
```
\entry{1}{2}{3}
```

Note: These fields don't all have to be populated, but require `{}` even when empty. For example:
```
\entry{Job Title}{Company}{Dates}

\entry{Job Title}{}{Dates}

\entry{Job Title}{}{}
```

### Detail
Use these to describe a section or entry.
```
\section{}
  \detail{This is something I accomplished.}

\entry{}{}{}
  \detail{This is another thing I accomplished.}
```

### Starter Code
```
\documentclass{my_cv}
\begin{document}

\header{}{}{}

\section{}

\entry{}{}{}
\detail{}

\end{document}
```

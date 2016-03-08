# Latex Resume Template

[View sample resume](https://github.com/Awjin/cv-template/blob/master/sample.pdf)

### Objectives
- Sparse design
- Clean typography
- Customizability

All style rules can be edited in `my_cv.cls`.

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

### Importing the Class
At the beginning of your tex file, put
```
\documentclass{my_cv}
```

### Header
The first field is left-aligned and in large font. Remaining entries are right-aligned.
```
\header{name}{email}{phone}
```

### Section
Use these to organize the resume body.
```
\section{Education}

\section{Employment}
```

### Entry
Fields 1 and 2 are left-aligned. Field 3 is right-aligned.
```
\entry{1}{2}{3}
```
These fields don't have to be populated, but require `{}` even when empty:
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

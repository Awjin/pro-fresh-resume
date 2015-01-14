#LaTex CV/Resume Template
This template focuses on the following:
- Clean, sparse design
- Highly readable typography
- Customizability

**Table of Contents**
- [Documentation](https://github.com/Awjin/cv_template#documentation)
  - [Importing the Class](https://github.com/Awjin/cv_template#importing-the-class)
  - [Name](https://github.com/Awjin/cv_template#name)
  - [Contact Info](https://github.com/Awjin/cv_template#contact-info)
  - [Section Title](https://github.com/Awjin/cv_template#section-title)
  - [Entry](https://github.com/Awjin/cv_template#entry)
  - [Entry Detail](https://github.com/Awjin/cv_template#entry-detail)
  - [Prose](https://github.com/Awjin/cv_template#prose)
  - [Prose Detail](https://github.com/Awjin/cv_template#prose-detail)
- [Skeleton Code](https://github.com/Awjin/cv_template#skeleton-code)

#Documentation

###Importing the Class
Put the following at the beginning of your tex file:
```
\documentclass{my_cv}
```
This will take care of everything (font, margins, etc.), so there is no need to style the document separately.

###Name
```
\name{my name}
```

###Contact Info
The contact section takes 6 parameters:
```
\contact{1}{2}{3}{4}{5}{6}
```
1 gets stacked on top of 2 to comprise the leftmost column. In similar fashion, 3 and 4 comprise the middle column, and 5 and 6 comprise the rightmost column. These parameters don't have any predetermined type, so you can input any info into each.

Example:
```
\contact{email}
        {phone}
        {linkedin}
        {website}
        {address line 1}
        {address line 2}
```

###Section Title
Used to structure the resume body.
```
\section{Education}

\section{Work Experience}
```

###Entry
The resume entry. There are two types:

1. *entryA*: An entry that stands on its own, e.g. "**College Name**"
2. *entryB*: An entry that has a secondary specifier, e.g. "**Job Title**, Company Name"

*EntryA* takes 2 parameters:
```
\entryA{College Name}{2010 - 2014}
```
*EntryB* takes 3 parameters:
```
\entryB{Job Title}{Company Name}{2010 - 2014}
```
Notice that both entry types take a time period as their last parameter. This can be left blank if it does not apply:
```
\entryA{Programming Languages}{}
```

###Entry Detail
A bullet point used to describe an entry. Needs to be encapsulated in an *itemize*.
```
\entryB{Job Title}{Company Name}{2010 - 2014}
\begin{itemize}
  \entrydetail{Responsibility 1}
  \entrydetail{Responsibility 2}
  \entrydetail{Etc.}
\end{itemize}
```

###Prose
A prose entry (useful for describing objectives, professional skills, interests, etc.). Use two newlines to separate paragraphs. Every paragraph except the first is indented.
```
\prose {
  This is paragraph 1.

  This is paragraph 2.
}
```

###Prose Detail
This has the same function as the [entry detail](https://github.com/Awjin/cv_template#entry-detail), except it shares font-size and margins with prose text.
```
\begin{itemize}
  \prosedetail{This is a long bullet point.}
  \prosedetail{This is a longer bullet point.}
  \prosedetail{This is the longest bullet point.}
\end{itemize}
```

#Skeleton Code
```
\documentclass{my_cv}
\begin{document}

\name{}
\contact{}{}{}{}{}{}

\section{}

\entryA{}{}
\begin{itemize}
  \entrydetail{}
\end{itemize}

\entryB{}{}{}
\begin{itemize}
  \entrydetail{}
\end{itemize}

\prose{}
\prosedetail{}

\end{document}
```
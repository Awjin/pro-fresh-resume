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
The contact section takes 4 parameters:
```
\contact{1}{2}{3}{4}
```
These will be displayed in one line underneath your name, with a dot separating each entry. Of course, this can be easily modified to accept more entries.

Example:
```
\contact{phone}
	{email}
        {website}
        {address}
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

#Skeleton Code
```
\documentclass{my_cv}
\begin{document}

\name{}
\contact{}{}{}{}

\section{}

\entryA{}{}
\begin{itemize}
  \entrydetail{}
\end{itemize}

\entryB{}{}{}
\begin{itemize}
  \entrydetail{}
\end{itemize}

\end{document}
```
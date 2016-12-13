%%
%% This is file `CASthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% CASthesis.dtx  (with options: `cls')
%%
%% This is a generated file.
%%
%% Copyright 2004-2005
%% CTEX.ORG and any individual authors listed elsewhere in this file.
%%
%% This file was generated from file(s) of the CASthesis package project.
%% ----------------------------------------------------------------------
%%
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%%
%% This file may only be distributed together with a copy of original
%% source files. You may however distribute original source files
%% without such generated files. Copying of this file is authorized
%% only if either:
%% (1) you make absolutely no changes to your copy, including name; OR
%% (2) if you do make changes, you first rename it to some other name.
%%
%% To produce the documentation run the original source files ending
%% with `.dtx' through LaTeX.
%%
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%







%\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{CASthesis}
  [2005/12/09 v0.1g CASthesis
   document class]
\newif\ifCAST@typeinfo \CAST@typeinfofalse
\DeclareOption{notypeinfo}{\CAST@typeinfofalse}
\newif\ifCAST@dvips \CAST@dvipstrue
\DeclareOption{dvips}{\CAST@dvipstrue}
\DeclareOption{dvipdfm}{\CAST@dvipsfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions



\LoadClass[cs4size,a4paper,fancyhdr,fntef]{ctexbook}[2005/11/25]
%% math packages
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm}
%% graphics packages
\RequirePackage{graphicx,psfrag}
%% hyperref package
\ifx\pdfoutput\undefined % We're not running pdftex
  \ifCAST@dvips
    \RequirePackage[dvips]{hyperref}
  \else
    \RequirePackage[dvipdfm]{hyperref}
  \fi
  \AtBeginDvi{\special{pdf:tounicode GBK-EUC-UCS2}} % GBK -> Unicode
\else
  \RequirePackage[pdftex]{hyperref}
\fi
\hypersetup{CJKbookmarks,%
       bookmarksnumbered,%
              colorlinks,%
              linkcolor=black,%   %去掉颜色把 blue 改成 black
              citecolor=black,%
              plainpages=false,%
            pdfstartview=FitH}



\usepackage{mathrsfs}
\usepackage{listings}
\usepackage{booktabs}

%% CJK Fonts packages
\RequirePackage{CJK, CJKnumb}
\RequirePackage{CJKpunct}

\AtBeginDocument{\makeatletter\input{CASthesis.cfg}\makeatother}
%%%%%参考文献为上标且有括号
\RequirePackage[numbers,sort&compress]{natbib}
%\RequirePackage{hypernat}
\usepackage{times}
\usepackage{setspace}
\usepackage{titletoc}
\usepackage{titlesec}
%\usepackage[center]{titlesec}
\usepackage{ccmap}
%%%页面设置
\oddsidemargin 2.5mm
\if@twoside
  \evensidemargin -2.5mm
\else
  \evensidemargin -2.5mm
\fi
\textheight 247 true mm
\textwidth 160 true mm
\topmargin -8.0 true mm
\headheight 5pt
%\footheight 15pt
%\headsep 26pt
\headsep 15pt
\footskip 25pt


%封面
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \thispagestyle{empty}
  \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\renewcommand{\floatpagefraction}{0.80}
\bibliographystyle{unsrt}
\newcommand\CASTspace{\protect\CTEX@spaceChar\protect\CTEX@spaceChar}
\def\CAST@getfileinfo#1 #2 #3\relax#4\relax{%
  \def\CASTfiledate{#1}%
  \def\CASTfileversion{#2}%
  \def\CASTfileinfo{#3}}%
\expandafter\ifx\csname ver@CASthesis.cls\endcsname\relax
  \edef\reserved@a{\csname ver@ctextemp_CASthesis.cls\endcsname}
\else
  \edef\reserved@a{\csname ver@CASthesis.cls\endcsname}
\fi
\expandafter\CAST@getfileinfo\reserved@a\relax? ? \relax\relax
\def\CAST@underline[#1]#2{%
  \CTEXunderline{\hbox to #1{\hfill#2\hfill}}}
\def\CASTunderline{\@ifnextchar[\CAST@underline\CTEXunderline}
\newcommand\classification[1]{\def\CAST@value@classification{#1}}
\newcommand\confidential[1]{\def\CAST@value@confidential{#1}}
\newcommand\UDC[1]{\def\CAST@value@UDC{#1}}
\newcommand\serialnumber[1]{\def\CAST@value@serialnumber{#1}}
\newcommand\school[1]{\def\CAST@value@school{#1}}
\newcommand\degree[1]{\def\CAST@value@degree{#1}}
\renewcommand\title[2][\CAST@value@title]{%
  \def\CAST@value@title{#2}
  \def\CAST@value@titlemark{\MakeUppercase{#1}}}
\renewcommand\author[1]{\def\CAST@value@author{#1}}
\newcommand\advisor[1]{\def\CAST@value@advisor{#1}}
\newcommand\advisorinstitute[1]{\def\CAST@value@advisorinstitute{#1}}
\newcommand\subject[1]{\def\CAST@value@subject{#1}}
\newcommand\major[1]{\def\CAST@value@major{#1}}
\newcommand\submitdate[1]{\def\CAST@value@submitdate{#1}}
\newcommand\defenddate[1]{\def\CAST@value@defenddate{#1}}
\newcommand\conferdate[1]{\def\CAST@value@conferdate{#1}}
\newcommand\institute[1]{\def\CAST@value@institute{#1}}
\newcommand\chairman[1]{\def\CAST@value@chairman{#1}}
\newcommand\reviewer[1]{\def\CAST@value@reviewer{#1}}
\newcommand\graduatedate[1]{\def\CAST@value@graduatedate{#1}}


\renewcommand\maketitle{%
   \cleardoublepage
   \thispagestyle{empty}
    {\renewcommand\baselinestretch{2}
    \heiti\zihao{4}
    \noindent\CAST@label@classification~
    \CASTunderline[120pt]{\CAST@value@classification}
    \hfill
    \CAST@label@confidential
    \CASTunderline[120pt]{\CAST@value@confidential}
    \\
    \normalfont\CAST@label@UDC~
    \CASTunderline[130pt]{\CAST@value@UDC}
    \par}
%    \vskip \stretch{1}
  \begin{center}
    \songti\zihao{2}
    %\vskip \stretch{1}
    \CAST@label@thesis
    \vskip \stretch{1}
    \heiti\zihao{-2} \CAST@value@title
    \vskip \stretch{1}
  \end{center}
    \songti\zihao{4}
    \def\tabcolsep{1pt}
    \def\arraystretch{1.5}
    \begin{tabular}{l l l l}
     \CAST@label@author & \CAST@value@author  \\
     \CAST@label@advisor  &\CAST@value@advisor  \\
                          &\CAST@value@advisorinstitute  \\
     \CAST@label@degree & \CAST@value@degree  &\CAST@label@subject &\CAST@value@subject\\
     \CAST@label@major & \CAST@value@major \\
     \CAST@label@submitdate &\CAST@value@submitdate  &\CAST@label@defenddate &\CAST@value@defenddate \\
     \CAST@label@conferdate &\CAST@value@conferdate &\CAST@label@chairman &\CAST@value@chairman \\
     \CAST@label@reviewer &\CAST@value@reviewer
    %\\[15pt]
    \end{tabular}
    \vskip \stretch{2}
    \begin{center}
    \CAST@value@school
    \\
    \CAST@value@graduatedate
    \end{center}
  \vskip \stretch{1}
  \normalfont\normalsize
  \clearpage

  \if@twoside
    \thispagestyle{empty}
    \ifCAST@typeinfo
      \vspace*{\stretch{1}}
      \begin{footnotesize}
        \noindent
        Typeset by \LaTeXe{} at \CTEX@todayold \\
        With package \texttt{CASthesis} \CASTfileversion{} of C\TeX{}.ORG
      \end{footnotesize}
    \fi
    \cleardoublepage
    \normalfont\normalsize
  \fi
}


\newcommand\englishdescription[1]{\def\CAST@value@englishdescription{#1}}
\newcommand\englishtitle[1]{\def\CAST@value@englishtitle{#1}}
\newcommand\englishauthor[1]{\def\CAST@value@englishauthor{#1}}
\newcommand\englishadvisor[1]{\def\CAST@value@englishadvisor{#1}}
\newcommand\englishschool[1]{\def\CAST@value@englishschool{#1}}
\newcommand\englishdate[1]{\def\CAST@value@englishdate{#1}}
\newcommand\makeenglishtitle{%
  \cleardoublepage
  \thispagestyle{empty}
  \noindent\zihao{4}\bf\CAST@value@englishdescription
  \begin{center}
    \vskip \stretch{1}
      \zihao{2} \bf\CAST@value@englishtitle
    \normalfont\normalsize\vskip \stretch{1}
      \zihao{4} By~\CAST@value@englishauthor
    \vskip \stretch{1}
      \zihao{4} \CAST@label@englishadvisor
      \zihao{4} \CAST@value@englishadvisor
    \vskip \stretch{4}
      \zihao{3} \bf\CAST@value@englishschool\\
      \zihao{3} \bf\CAST@value@englishdate
  \end{center}
  \vskip \stretch{1}
  \normalfont\normalsize
  \clearpage
  \if@twoside
    \thispagestyle{empty}
   \cleardoublepage
  \fi
}

%独创性、版权声明
\newcommand\innovstatement[1]{\def\CAST@value@innovstatement{#1}}
\newcommand\copyrightstate[1]{\def\CAST@value@copyrightstate{#1}}
\newcommand\makestatement{%
  \cleardoublepage
  \thispagestyle{statementstyle}
  \addcontentsline{toc}{chapter}{\CAST@label@innovstatement}
    \begin{center}
      \heiti\zihao{2}\CAST@label@innovstatement
    \end{center}
     \normalfont\normalsize
%    \vskip \stretch{0.7}
    \begin{spacing}{1.8}
      \zihao{4}\indent\CAST@value@innovstatement
    \vskip \stretch{1}
    \hspace{7cm}\zihao{4}\noindent\CAST@label@authorsign
    \vskip \stretch{1}
    \hspace{7cm}\zihao{4}\noindent\CAST@label@statedate
    \end{spacing}
%    \vskip \stretch{1}
    \begin{center}
      \heiti\zihao{2}\CAST@label@copyrightstate
    \end{center}
     \normalfont\normalsize
%    \vskip \stretch{0.7}
    \begin{spacing}{1.8}
      \indent\zihao{4}\CAST@value@copyrightstate
      \vskip \stretch{1}
      \indent\zihao{4}\CAST@label@exchangetime
      \vskip \stretch{1}
      \indent\zihao{4}\CAST@value@exchangetime
    \end{spacing}
      \vskip \stretch{1}
      \begin{tabular}{l c l}
        \zihao{4}\CAST@label@authorsign &~\hspace{4cm}~& \zihao{4}\CAST@label@advisorsign \\
        \zihao{4}\CAST@label@signdate &~\hspace{4cm}~& \zihao{4}\CAST@label@signdate \\
      \end{tabular}
      \vskip \stretch{2}
      \normalfont\normalsize
  \clearpage
  \if@twoside
    \thispagestyle{statementstyle}
   \cleardoublepage
  \fi
}

%%%页眉页脚
\fancypagestyle{plain}{
  \fancyhf{}
  \pagestyle{fancy}
  \fancyhf{}
    \fancyhead[LE,LO]{\kaishu\zihao{5} 东北大学硕士学位论文}
    \fancyhead[RE,RO]{\kaishu\zihao{5} \leftmark}
  \fancyfoot[CE,CO]{\songti\zihao{-4} -~\thepage~-}
  \renewcommand{\headrulewidth}{0.1pt}
  \renewcommand{\footrulewidth}{0pt}
}
\pagestyle{fancy}
  \fancyhf{}
    \fancyhead[LE,LO]{\kaishu\zihao{5} 东北大学硕士学位论文}
    \fancyhead[RE,RO]{\kaishu\zihao{5} \leftmark}
  \fancyfoot[CE,CO]{\songti\zihao{-4} -~\thepage~-}

\fancypagestyle{abstractstyle}{
  \fancyhf{}
  \pagestyle{fancy}
  \fancyhf{}
    \fancyhead[LE,LO]{\kaishu\zihao{5} 东北大学硕士学位论文}
    \fancyhead[RE,RO]{\kaishu\zihao{5} \CAST@label@abstract}
  \fancyfoot[CE,CO]{\songti\zihao{-4} -~\thepage~-}
  \renewcommand{\headrulewidth}{0.1pt}
  \renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{englishabstractstyle}{
  \fancyhf{}
  \pagestyle{fancy}
  \fancyhf{}
    \fancyhead[LE,LO]{\kaishu\zihao{5} 东北大学硕士学位论文}
    \fancyhead[RE,RO]{\kaishu\zihao{5} \CAST@label@englishabstract}
  \fancyfoot[CE,CO]{\songti\zihao{-4} -~\thepage~-}
  \renewcommand{\headrulewidth}{0.1pt}
  \renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{statementstyle}{
  \fancyhf{}
  \pagestyle{fancy}
  \fancyhf{}
%    \fancyhead[LE,LO]{\kaishu\zihao{5} 东北大学硕士学位论文}
%    \fancyhead[RE,RO]{\kaishu\zihao{5} \CAST@label@englishabstract}
  \fancyfoot[CE,CO]{\songti\zihao{-4} -~\thepage~-}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
\renewcommand\frontmatter{
  \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{Roman}}


%%%中文摘要
\newenvironment{abstract}
  {\clearpage
 \thispagestyle{abstractstyle}
\if@twoside
    \cleardoublepage
    \thispagestyle{abstractstyle}
\fi
  \phantomsection
  \addcontentsline{toc}{chapter}{\CAST@label@abstract}
  %\begin{center}
    %\vspace*{-0.2cm}\bf\zihao{3}\CAST@value@title
  %\end{center}
    \begin{center}
    \vspace*{0.1cm}\zihao{2}\CAST@label@abstract
  \end{center}
 }
 {}


%%%中文关键词
\newcommand\keywords[1]{%
  \vspace{2ex}\noindent{\heiti \CAST@label@keywords} #1}



%%%英文摘要
\newenvironment{englishabstract}
{\clearpage
 \thispagestyle{englishabstractstyle}
\if@twoside
    \cleardoublepage
    \thispagestyle{englishabstractstyle}
\fi
  \phantomsection
  \addcontentsline{toc}{chapter}{\CAST@label@englishabstract}
  %\begin{center}
  %{\vspace*{-0.2cm}\bf\zihao{3}\CAST@value@englishtitle}
  %\end{center}
  \begin{center}
  {\vspace*{0.1cm}\zihao{2}\CAST@label@englishabstract}
  \end{center}
 }
 {}


%%%英文关键词
\newcommand\englishkeywords[1]{%
  \vspace{2ex}\noindent{\bf \CAST@label@englishkeywords} #1}





%%%目录
\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \Nchapter{\contentsname}%
    \pagestyle{fancy}
    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }
\addtocontents{toc}{\let\string\CTEX@spaceChar\relax}





%%%正文
\newcommand\Nchapter[1]{%
  \if@mainmatter%
    \@mainmatterfalse%
    \chapter{#1}%
    \@mainmattertrue%
  \else
    \chapter{#1}%
  \fi}




%%在目录的摘要，abstract等后面加虚线
\def\@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
     \parindent #2\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
     {#4}\nobreak
     \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}\hfill
     \nobreak
     \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #5}%
     \par}%
  \fi}
\renewcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \setlength\@tempdima{3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1
       \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}
       \hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak
      \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}
      \hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}



%%%参考文献
\renewenvironment{thebibliography}[1]
     {\Nchapter{\bibname}%

      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newcommand{\upcite}[1]{\textsuperscript{\textsuperscript{\cite{#1}}}}
%\renewcommand{\bibnumfmt}[1]{#1.}



%%%发表文章
\newenvironment{publications}[1]
     {\Nchapter{\CAST@label@publications}%
      \@mkboth{\MakeUppercase\CAST@label@publications}
              {\MakeUppercase\CAST@label@publications}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `publications' environment}}%
      \endlist}



%%%个人简历
\newenvironment{resume}
  {\Nchapter{\CAST@label@resume}}
  {}
\newenvironment{resumesection}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@
           \leftmargin 2\ccwd}
   \item\relax}
  {\endlist}





%%%致谢
\renewenvironment{thanks}
  {\Nchapter{\CAST@label@thanks}}
  {}
\setcounter{secnumdepth}{4}
\newtheoremstyle{break}% name
  {}%      Space above, empty = `usual value'
  {}%      Space below
  {\itshape}% Body font
  {}%         Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries}% Thm head font
  {.}%        Punctuation after thm head
  {\newline}% Space after thm head: \newline = linebreak
  {}%         Thm head spec



%%去掉图表后面的冒号并加空白空1em    the format of the figure and table title
\def\fnum@figure#1{\zihao{5}\figurename\nobreakspace\thefigure
       \hspace{0.5em}}%去掉图后面的冒号并加空白空1em
\def\fnum@table#1{\zihao{5}\tablename\nobreakspace\thetable
       \hspace{0.5em}}%去掉表后面的冒号并加空白空1em



  %% 章节标题的格式
%%

\titleformat{\chapter}[hang]{\heiti\zihao{2}\centering}%
   {\centering 第\chaptertitlename章}{1em}{}{}%
\titlespacing{\chapter}
    {0pt}{-3ex plus .1ex minus .2ex}{\wordsep}

\titleformat{\section}[hang]{\heiti\zihao{3}}
    {\heiti\zihao{3}\thesection\filcenter}{1em}{}{}
\titlespacing{\section}
    {0pt}{1ex plus .1ex minus .2ex}{\wordsep}


\titleformat{\subsection}[hang]{\heiti\zihao{4}}
    {\heiti\zihao{4}\thesubsection\filcenter}{1em}{}{}
\titlespacing{\subsection}%
    {0pt}{1ex plus .1ex minus .2ex}{\wordsep}


\titleformat{\subsubsection}[hang]{\heiti\zihao{-4}}
    {\heiti\zihao{-4}\thesubsubsection\filcenter}{1em}{}{}
\titlespacing{\subsubsection}%
    {0pt}{1ex plus .1ex minus .2ex}{\wordsep}





 %% 目录格式
%%


\titlecontents{chapter}[4.6em]{\renewcommand{\baselinestretch}{0.5}\color{black}\heiti\zihao{3}\addvspace{1.5ex}}
%\titlecontents{chapter}[4.6em]{\renewcommand{\baselinestretch}{0.5}\color{black}\heiti\zihao{3}\addvspace{1.5ex}}
 {\contentslabel{3.5em}\hspace*{0.0em}}{\hspace*{-3.5em}}
 {\color{black}\titlerule*[0.8pc]{.}\songti\zihao{-4}\contentspage}[\addvspace{0.5ex}]

\titlecontents{section}[3.0em] {\color{black}\songti\zihao{-4}}
{\contentslabel{2em}\hspace*{0.0em}} {\hspace*{-2.3em}}
{\color{black}\titlerule*[0.8pc]{.}\contentspage}
%[6.0em] {\color{blue}\bf\normalsize}

\titlecontents{subsection}[4.0em]{\color{black}\songti\zihao{-4}}
{\contentslabel{2em}\hspace*{1.0em}} {\hspace*{-3.3em}}
{\color{black}\titlerule*[0.8pc]{.}\contentspage}





\endinput
%%
%% End of file `CASthesis.cls'.

%% TEMPLETE WRITER: SAY OL  %%
%% EMAIL: say_ol@yahoo.com  %%
%% WEBSITE: khtug.blogspot.com  %%
%% PERSONAL BLOG: bunnybookshelf.blogspot.com  %%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pptec}[2018/09/02]
\LoadClassWithOptions{book}
% geometry
\RequirePackage{geometry}
\geometry{%
	left=1.5cm,%
	right=1.5cm,%
	top=2cm,%
	bottom=2cm,%
	bindingoffset=0.5cm}
% math font
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{newpxmath}
% language
\RequirePackage[no-math]{fontspec}% no math font
\setmainfont[Ligatures=TeX,AutoFakeBold=0.5,AutoFakeSlant=0.25]{KhmerOSPalatino}% roman font
\setsansfont[Ligatures=TeX,AutoFakeBold=0,AutoFakeSlant=0.25]{Khmer OS Muol Light}% sans serif font
\setmonofont[Ligatures=TeX,AutoFakeBold=0.5,AutoFakeSlant=0.25]{KhmerOSBokorPalatino}% typewriter font
\XeTeXlinebreaklocale "km"% line break rule
\XeTeXlinebreakskip = 0pt plus 1pt minus 0.5pt% line break skip
% khmer number
\def\khmer#1{\expandafter\@khmer\csname c@#1\endcsname}
\def\@khmer#1{\expandafter\@@khmer\number#1\@nil}
\def\@@khmer#1{%
	\ifx#1\@nil% terminate when encounter @nil
	\else%
	  \ifcase#1 ០\or ១\or ២\or ៣\or ៤\or ៥\or ៦\or ៧\or ៨\or ៩\fi%
	  \expandafter\@@khmer% recursively map the following characters
	\fi}
\def\khmernumeral#1{\@@khmer#1\@nil}
% khmer alphabet
\def\alpkh#1{\expandafter\@alpkh\csname c@#1\endcsname}
\def\@alpkh#1{%
	\ifcase#1% zero -> none
	  \or ក\or ខ\or គ\or ឃ\or ង%
	  \or ច\or ឆ\or ជ\or ឈ\or ញ%
	  \or ដ\or ឋ\or ឌ\or ឍ\or ណ%
	  \or ត\or ថ\or ទ\or ធ\or ន%
	  \or ប\or ផ\or ព\or ភ\or ម%
	  \or យ\or រ\or ល\or វ\or ស%
	  \or ហ\or ឡ\or អ%
	\else%
	  \@ctrerr% otherwise, counter error!
	\fi}
%
\def\khmershortdate{%
	\ifnum\day<10\@khmer{0\day}\else\@khmer\day\fi%
	/\@khmer\month%
	/\@khmer\year}
\def\khmerdate{%
	\ifnum\day<10\@khmer{0\day}\else\@khmer\day\fi~%
	\ifcase\month\or%
	មករា\or%
	កុម្ភៈ\or%
	មិនា\or%
	មេសា\or%
	ឧសភា\or%
	មិថុនា\or%
	កក្កដា\or%
	សីហា\or%
	កញ្ញា\or%
	តុលា\or%
	វិច្ឆិកា\or%
	ធ្នូ\fi~%
	\@khmer\year}
% color
\RequirePackage[table]{xcolor}
\DeclareOption{black}{\colorlet{pptec}{black}}
\DeclareOption{blue}{\colorlet{pptec}{blue}}
\DeclareOption{brown}{\colorlet{pptec}{brown}}
\DeclareOption{cyan}{\colorlet{pptec}{cyan}}
\DeclareOption{darkgray}{\colorlet{pptec}{darkgray}}
\DeclareOption{gray}{\colorlet{pptec}{gray}}
\DeclareOption{green}{\colorlet{pptec}{green}}
\DeclareOption{gray}{\colorlet{pptec}{gray}}
\DeclareOption{lime}{\colorlet{pptec}{lime}}
\DeclareOption{magenta}{\colorlet{pptec}{magenta}}
\DeclareOption{olive}{\colorlet{pptec}{olive}}
\DeclareOption{orange}{\colorlet{pptec}{orange}}
\DeclareOption{pink}{\colorlet{pptec}{pink}}
\DeclareOption{purple}{\colorlet{pptec}{purple}}
\DeclareOption{red}{\colorlet{pptec}{red}}
\DeclareOption{teal}{\colorlet{pptec}{teal}}
\DeclareOption{violet}{\colorlet{pptec}{violet}}
\DeclareOption{yellow}{\colorlet{pptec}{yellow!45!red}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ExecuteOptions{red}
\ProcessOptions\relax
% floating object
\RequirePackage{float}
% graphic
\RequirePackage{graphicx}
% table
\RequirePackage{colortbl}
\arrayrulecolor{pptec}
% picture
\RequirePackage{tikz}
\usetikzlibrary{calc}
\usetikzlibrary{angles}
\usetikzlibrary{quotes}
\usetikzlibrary{arrows.meta}
\tikzset{%
	every picture/.style={%
		line width=1pt,%
		fill=pptec,%
		draw=pptec,%
		text=pptec,%
	},%
	>={Stealth[length=6pt,inset=2pt]}%
}
% 3d vector
\tikzset{%
	axis/.style={->,color=blue},
	vector/.style={->,color=black},
	vector guide/.style={densely dashed,color=blue}}
% boxes
\RequirePackage{tcolorbox}
\tcbuselibrary{theorems} % \tcboxmath[size=fbox]{arg}
\tcbuselibrary{skins}
\tcbuselibrary{breakable}
\tcbset{%
	enhanced,%
	standard jigsaw,%
	breakable,%
	opacityback=0,%
	colback=white,%
	colframe=pptec,%
	colbacktitle=pptec!7!white,%
	before skip=\topskip,%
	after skip=\topskip,%
	boxrule=1pt,%
	titlerule=0pt,%
	fonttitle=\color{pptec}\ttfamily,%
	left=1ex,%
	right=1ex,%
	top=1ex,%
	middle=1ex,%
	bottom=1ex,%
	attach title to upper=\enspace,%
  highlight math style={%
  	size=fbox},%
  every box/.style={%
  	highlight math style={%
  		size=fbox,%
  		boxrule=1pt,%
  		colback=white,%
  		colframe=pptec}%
  	}%
  }
\def\boxtext#1{\tcbox[nobeforeafter,tcbox raise base,size=fbox,colframe=pptec,colback=white]{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% sections format
\def\thepart{\alpkh{part}}
\def\thechapter{\khmer{chapter}}
\def\thesection{\khmer{section}}
\def\thesubsection{\thesection.\khmer{subsection}}
\def\theequation{\arabic{equation}}
\def\thepage{\textsf{\khmer{page}}}
\def\@seccntformat#1{\begingroup\color{pptec}\sffamily\bfseries\csname the#1\endcsname.\endgroup~}
\def\@secttlformat#1{\begingroup\color{pptec}\sffamily\bfseries#1\endgroup}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% table of contents
% part
\def\l@part#1#2{%
	\ifnum \c@tocdepth >-2\relax
	\addpenalty{-\@highpenalty}%
	\addvspace{1em \@plus\p@}%
	\setlength\@tempdima{3em}%
	\begingroup
	\parindent \z@ \rightskip \@pnumwidth
	\parfillskip -\@pnumwidth
	{\leavevmode
		\large \color{pptec}\sffamily\partname~#1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
	\nobreak
	\global\@nobreaktrue
	\everypar{\global\@nobreakfalse\everypar{}}%
	\endgroup
	\fi}
% chapter
\def\l@chapter#1#2{%
	\ifnum \c@tocdepth >\m@ne
		\addpenalty{-\@highpenalty}%
		\vskip 1.0em \@plus\p@
		\setlength\@tempdima{2em}%
		\begingroup
			\parindent \z@ \rightskip \@pnumwidth
			\parfillskip -\@pnumwidth
			\leavevmode \sffamily\color{pptec}
			\advance\leftskip\@tempdima
			\hskip -\leftskip
			\chaptername~#1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss\color{pptec}#2}\par
			\penalty\@highpenalty
		\endgroup
	\fi}
% section
\renewcommand*\l@section{\@dottedtocline{1}{3.75em}{3.25em}}
\def\@pnumwidth{3em}
\def\@dottedtocline#1#2#3#4#5{%
	\ifnum #1>\c@tocdepth \else
	\vskip \z@ \@plus.2\p@
	{\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
		\parindent #2\relax\@afterindenttrue
		\interlinepenalty\@M
		\leavevmode
		\@tempdima #3\relax
		\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
		\color{pptec}\sffamily #4\nobreak
		\leaders\hbox{$\m@th
			\mkern \@dotsep mu\hbox{.}\mkern \@dotsep
			mu$}\hfill
		\nobreak
		\hb@xt@\@pnumwidth{\hfil #5}%
		\par}%
	\fi}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part
\def\@part[#1]#2{%
	\ifnum \c@secnumdepth >-2\relax
	\refstepcounter{part}%
	\addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
	\else
	\addcontentsline{toc}{part}{#1}%
	\fi
	\markboth{}{}%
	{\centering
		\interlinepenalty \@M
		\sffamily
		\ifnum \c@secnumdepth >-2\relax
		\huge\color{pptec} \partname\nobreakspace\thepart
		\par
		\vskip 20\p@
		\fi
		\Huge  #2\par}%
	\@endpart}
\def\@spart#1{%
	{\centering
		\interlinepenalty \@M
		\sffamily
		\Huge \color{pptec} #1\par}%
	\@endpart}
% chapter
% \RequirePackage{tikz}
\def\@makechapterhead#1{%
	{\if@twocolumn\vspace*{2.5ex}\else\relax\fi%
		\parindent\z@\raggedright%
		\ifnum\c@secnumdepth>\m@ne%
		%
		\begin{tikzpicture}[overlay]
		\node [right,draw=pptec,text=pptec,line width=1pt,rounded corners,minimum height=7ex,inner xsep=1.5ex,inner ysep=1ex] (chapbox) at (0,0) {\Large\sffamily\chaptername~\thechapter.~#1};%
		\draw[draw=pptec,line width=1pt] (chapbox.east)--(\linewidth,0);%
		\end{tikzpicture}}%
	%
	\fi\@@par\nobreak\vskip5ex}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% chapter star
\def\@makeschapterhead#1{%
	{\if@twocolumn\vspace*{2.5ex}\else\relax\fi%
		\parindent\z@\raggedright%
		\ifnum\c@secnumdepth>\m@ne%
		%
		\begin{tikzpicture}[overlay]
		\node [right,draw=pptec,text=pptec,line width=1pt,rounded corners,minimum height=7ex,inner xsep=1.5ex,inner ysep=1ex] (chapbox) at (0,0) {\Large\sffamily #1};%
		\draw[draw=pptec,line width=1pt] (chapbox.east)--(\linewidth,0);%
		\end{tikzpicture}}%
	%
	\fi\@@par\nobreak\vskip5ex}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% section spacing
\long\def\section{%
	\@startsection{section}{1}{\z@}{%
		-1.5ex\@plus-.2ex\@minus-.2ex}{%
		1.5ex\@plus.2ex\@minus.2ex}{\normalfont\bfseries}}
\long\def\subsection{%
	\@startsection{subsection}{2}{\z@}{%
		-1.5ex\@plus-.2ex\@minus-.2ex}{%
		1.5ex\@plus.2ex\@minus.2ex}{\normalfont\bfseries}}
\long\def\subsubsection{%
	\@startsection{subsubsection}{3}{\z@}{%
		-1.5ex\@plus-.2ex\@minus-.2ex}{%
		1.5ex\@plus.2ex\@minus.2ex}{\normalfont\bfseries}}
\long\def\paragraph{%
	\@startsection{paragraph}{4}{\z@}{%
		1.5ex\@plus.2ex\@minus.2ex}{-1em}{\normalfont\bfseries}}
\long\def\subparagraph{%
	\@startsection{subparagraph}{4}{\parindent}{%
		1.5ex\@plus.2ex\@minus.2ex}{-1em}{\normalfont\bfseries}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% section drawing
% \RequirePackage{tikz}
\def\@sect#1#2#3#4#5#6[#7]#8{%
	\ifnum #2>\c@secnumdepth
		\let\@svsec\@empty
	\else
		\refstepcounter{#1}%
		\protected@edef\@svsec{\@seccntformat{#1}\relax}%
	\fi
	\@tempskipa #5\relax
	\ifdim \@tempskipa>\z@
		\begingroup
		#6{%
			\vskip1ex\noindent%
			\begin{tikzpicture}[overlay]%
				\node[right,draw=pptec,line width=.7pt,rounded corners,minimum height=3ex,inner xsep=1ex,inner ysep=.5ex](sectbox)at(0,0){\@svsec\@secttlformat{#8}};%
				\draw[draw=pptec,line width=.7pt](sectbox.east)--(\linewidth,0);%
			\end{tikzpicture}%
			\@@par\nobreak\vskip1ex}%
		\endgroup
		\csname #1mark\endcsname{#7}%
		\addcontentsline{toc}{#1}{%
			\ifnum #2>\c@secnumdepth \else
				\protect\numberline{\csname the#1\endcsname}%
			\fi
			#7}%
	\else
		\def\@svsechd{%
			#6{\hskip #3\relax
				\@svsec #8}%
			\csname #1mark\endcsname{#7}%
			\addcontentsline{toc}{#1}{%
				\ifnum #2>\c@secnumdepth \else
					\protect\numberline{\csname the#1\endcsname}%
				\fi
				#7}}%
	\fi
	\@xsect{#5}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% section star
% \RequirePackage{tikz}
\def\@ssect#1#2#3#4#5{%
	\@tempskipa #3\relax
	\ifdim \@tempskipa>\z@
		\begingroup
		#4{%
			\noindent%
			\begin{tikzpicture}[overlay]%
				\node[right,draw=pptec,line width=.7pt,rounded corners,minimum height=3ex,inner xsep=1ex,inner ysep=.5ex](sectbox)at(0,0){\@secttlformat{#5}};%
				\draw[draw=pptec,line width=.7pt](sectbox.east)--(\linewidth,0);%
			\end{tikzpicture}%
			\@@par\nobreak\vskip1ex}%
		\endgroup
	\else
		\def\@svsechd{#4{\hskip #1\relax #5}}%
	\fi
	\@xsect{#3}}
% reference
\RequirePackage{hyperref}
\hypersetup{%
	linktoc=all,%
	bookmarksnumbered,%
	bookmarksopen,%
	hidelinks}
\RequirePackage{bookmark}
\bookmarksetup{
	addtohook={%
		\ifnum\bookmarkget{level}=0%
		\bookmarksetup{color=red}%
		\fi%
		\ifnum\bookmarkget{level}=1%
		\bookmarksetup{color=blue}%
		\fi%
		\ifnum\bookmarkget{level}=2%
		\bookmarksetup{color=teal}%
		\fi}}
% enumerate
\RequirePackage[inline]{enumitem}
\RequirePackage{multicol}
\RequirePackage{pifont}
% set enumerate and itemize key for number of columns
% \RequirePackage{multicol}
\SetEnumitemKey{2}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{2},after=\end{multicols}}
\SetEnumitemKey{3}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{3},after=\end{multicols}}
\SetEnumitemKey{4}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{4},after=\end{multicols}}
\SetEnumitemKey{5}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{5},after=\end{multicols}}
\SetEnumitemKey{6}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{6},after=\end{multicols}}
%% set enumerate and itemize key for numerals
%\AddEnumerateCounter{\alpkh}{\@alpkh}{\char"1788}
%\AddEnumerateCounter{\khmer}{\@khmer}{\char"17e3}
\AddEnumerateCounter{\alpkh}{\@alpkh}{ឈ}
\AddEnumerateCounter{\khmer}{\@khmer}{៣}
% enumerate keys
\SetEnumitemKey{1}{label=\protect\color{pptec}\protect\ttfamily\arabic*.}
\SetEnumitemKey{a}{label=\protect\color{pptec}\protect\ttfamily\alph*.}
\SetEnumitemKey{A}{label=\protect\color{pptec}\protect\ttfamily\Alph*.}
\SetEnumitemKey{i}{label=\protect\color{pptec}\protect\ttfamily\roman*.}
\SetEnumitemKey{I}{label=\protect\color{pptec}\protect\ttfamily\Roman*.}
\SetEnumitemKey{k}{label=\protect\color{pptec}\protect\ttfamily\alpkh*.}
\SetEnumitemKey{m}{label=\protect\color{pptec}\protect\ttfamily\khmer*.}
% itemize keys
\SetEnumitemKey{b}{label=\protect\color{pptec}\protect\ensuremath{\bullet}}
\SetEnumitemKey{c}{label=\protect\color{pptec}\protect\ensuremath{\circ}}
\SetEnumitemKey{d}{label=\protect\color{pptec}\protect\ensuremath{\diamond}}
\SetEnumitemKey{t}{label=\protect\color{pptec}\protect\ensuremath{\triangleright}}
\SetEnumitemKey{p}{label=\protect\color{pptec}\protect\ding{43}}
\SetEnumitemKey{w}{label=\protect\color{pptec}\protect\ding{45}}
% styling enumerate
\setlist[enumerate]{%
	parsep=0pt,%
	topsep=1ex,%
	partopsep=0pt,%
	leftmargin=*,%
	itemsep=.5ex,%
	labelsep=0.5ex}
\setlist[enumerate,1]{m}
\setlist[enumerate,2]{k}
\setlist[enumerate,3]{a}
\setlist[enumerate,4]{i}
% styling itemize
\setlist[itemize]{%
	parsep=0pt,%
	topsep=1ex,%
	partopsep=0pt,%
	leftmargin=*,%
	itemsep=.5ex,%
	labelsep=.5ex}
\setlist[itemize,1]{b}
\setlist[itemize,2]{c}
\setlist[itemize,3]{d}
\setlist[itemize,4]{t}
% sub enumerate
\RequirePackage{tasks}
\NewPatternFormat{k}{\@alpkh}% cntformats package
\NewPatternFormat{m}{\@khmer}% counter-format=tsk[l]
\settasks{%
	counter-format=tsk[k].,%
	label-format=\color{pptec}\ttfamily,%
	label-offset=0.5ex,%
	label-align=right,%
	label-width=3ex,%
	item-indent=3.5ex,%
	column-sep=2ex,%
	before-skip=0ex,%
	after-skip=0ex,%
	after-item-skip=0.5ex%
}
\NewTasks[%
	style=enumerate,%
	counter-format=tsk[k].,%
	label-format=\color{pptec}\ttfamily,%
	label-offset=0.5ex,%
	label-align=right,%
	label-width=3ex,%
	item-indent=3.5ex,%
	column-sep=2ex,%
	before-skip=0ex,%
	after-skip=0ex,%
	after-item-skip=0.5ex]{Enumerate}[\item]
\NewTasks[%
	style=itemize,
	label=\ensuremath{\bullet},
	label-format=\color{pptec},%
	label-offset=0.5ex,%
	label-align=right,%
	label-width=1ex,%
	item-indent=1.5ex,%
	column-sep=2ex,%
	after-item-skip=0.5ex]{Itemize}[\item]
% caption
\RequirePackage{caption}
\RequirePackage{subcaption}
\DeclareCaptionFont{pptec}{\color{pptec}}
\captionsetup{%
	font=small,%
	skip=0pt,%
	labelfont={pptec,tt},%
	textfont={pptec,tt},%
	labelsep=period}
\captionsetup[sub]{%
	font=small,%
	skip=0.5ex,%
	labelfont={pptec,tt},%
	textfont={pptec,tt},%
	labelsep=period}
\renewcommand{\thetable}{\khmer{table}}
\renewcommand{\thefigure}{\khmer{figure}}
\renewcommand{\thesubtable}{\alpkh{subtable}}
\renewcommand{\thesubfigure}{\alpkh{subfigure}}
%% name macro %%
\def\partname{ផ្នែក}
\def\chaptername{មេរៀន}
\def\contentsname{មាតិកា}
\def\appendixname{បន្ថែម}
\def\listtablename{បញ្ជីតារាង}
\def\listfigurename{បញ្ជីរូភាព}
\def\tablename{តារាង}
\def\figurename{រូប}
\def\bibname{គន្ថនិទ្ទេស}
\def\refname{ឯកសារយោង}
\def\abstractname{សង្ខេប}
% theorem name maro
\def\lemmaname{បទគន្លិះ}
\def\theoremname{ទ្រឹស្ដីបទ}
\def\corollaryname{វិបាក}
\def\propositionname{លក្ខណៈ}
\def\definitionname{និយមន័យ}
\def\generalityname{ជាទូទៅ}
\def\examplename{ឧទាហរណ៍}
\def\exercisename{លំហាត់}
\def\answername{ចម្លើយ}
\def\remarkname{សម្គាល់}
\def\practicename{ប្រតិបត្តិ}
\def\formulaname{រូបមន្ត}
\def\proofname{សម្រាយ}
\def\explanationname{ពន្យល់}
\def\objectivename{វត្ថុបំណង}
\allowdisplaybreaks
%% theorem with counter %%
\theoremstyle{definition}
\newtheorem{lemma}{\lemmaname}
\newtheorem{theorem}{\theoremname}
\newtheorem{corollary}{\corollaryname}
\newtheorem{proposition}{\propositionname}
\newtheorem{definition}{\definitionname}
%\newtheorem{generality}{\generalityname}
\newtheorem{example}{\examplename}
\newtheorem{exercise}{\exercisename}
\newtheorem{practice}{\practicename}
\newtheorem{formula}{\formulaname}
\theoremstyle{remark}
%\newtheorem{remark}{\remarkname}
\renewcommand*{\thelemma}{\khmer{lemma}}
\renewcommand*{\thetheorem}{\khmer{theorem}}
\renewcommand*{\thecorollary}{\khmer{corollary}}
\renewcommand*{\theproposition}{\khmer{proposition}}
\renewcommand*{\thedefinition}{\khmer{definition}}
\renewcommand*{\theexample}{\khmer{example}}
\renewcommand*{\theexercise}{\khmer{exercise}}
\renewcommand*{\thepractice}{\khmer{practice}}
\renewcommand*{\theformula}{\khmer{formula}}
%\renewcommand*{\theremark}{\khmer{remark}}
%% theorem without counter %%
\theoremstyle{definition}
\newtheorem*{lemma*}{\lemmaname}
\newtheorem*{theorem*}{\theoremname}
\newtheorem*{corollary*}{\corollaryname}
\newtheorem*{proposition*}{\propositionname}
\newtheorem*{definition*}{\definitionname}
\newtheorem*{generality}{\generalityname}
\newtheorem*{example*}{\examplename}
\newtheorem*{exercise*}{\exercisename}
\newtheorem*{practice*}{\practicename}
\newtheorem*{formula*}{\formulaname}
\newtheorem*{answer}{\answername}
\theoremstyle{remark}
\newtheorem*{remark}{\remarkname}
\newtheorem*{explanation}{\explanationname}
%% frame theorem %%
\tcolorboxenvironment{lemma}{}
\tcolorboxenvironment{theorem}{}
\tcolorboxenvironment{corollary}{}
\tcolorboxenvironment{proposition}{}
\tcolorboxenvironment{definition}{}
\tcolorboxenvironment{generality}{}
%\tcolorboxenvironment{exercise}{}
\tcolorboxenvironment{formula}{}
\tcolorboxenvironment{lemma*}{}
\tcolorboxenvironment{theorem*}{}
\tcolorboxenvironment{corollary*}{}
\tcolorboxenvironment{proposition*}{}
\tcolorboxenvironment{definition*}{}
\tcolorboxenvironment{generality*}{}
%\tcolorboxenvironment{example*}{}
%\tcolorboxenvironment{exercise*}{}
%\tcolorboxenvironment{practice*}{}
\tcolorboxenvironment{formula*}{}
\tcolorboxenvironment{explanation}{}
\newtcolorbox{objective}{title=\objectivename}
%% change label color %%
\thm@headfont{\color{pptec}\ttfamily}
\def\th@remark{%
	\thm@headfont{\color{pptec}\ttfamily}%
	\normalfont % body font
	\thm@preskip\topsep \divide\thm@preskip\tw@
	\thm@postskip\thm@preskip
}
%% re-define proof environment %%
\renewenvironment{proof}[1][\color{pptec}\ttfamily\proofname]{\par
	\pushQED{\qed}%
	\normalfont \topsep6\p@\@plus6\p@\relax
	\trivlist
	\item[\hskip\labelsep
	\color{pptec}\ttfamily
	#1\@addpunct{.}]\ignorespaces
}{%
	\popQED\endtrivlist\@endpefalse
}
%% re-define quite easy done symbol %%
\def\qedsymbol{\textcolor{pptec}{\ensuremath{\blacksquare}}}
%% paint color for bibiography counter %%
\def\@biblabel#1{\textcolor{pptec}{[#1]}}
%% footnote %%
\def\footnoterule{\kern -3pt\textcolor{pptec}{\hrule width \linewidth height 0.4pt}\kern 2.6pt}
\def\thefootnote{\color{pptec}\ttfamily(\arabic{footnote})}
%% change every inline maths to display maths %%
\everymath{\displaystyle}
%% increase base line skip in display formula
\addtolength{\jot}{1pt}
%% prevent book contents from vertical stretching %%
\raggedbottom
%%\tikz[baseline]\node[rounded corners,draw=pptec,line width=1pt,inner sep=1ex](page){\parbox{5ex}{\centering\ttfamily\thepage}};
%%\tikz\node[rounded corners,draw=pptec,line width=1pt,inner sep=1ex]{\parbox{5ex}{\centering\ttfamily\thepage}};
\def\preparelabel{លំហាត់បន្ថែមដោយ}
\def\preparename{អូល សាយ}
\def\ps@plain{%
	\let\@oddhead\@empty%
	\let\@evenhead\@oddhead%
	\def\@oddfoot{%
		\scriptsize\textcolor{pptec!89!white}{\footnotesize\itshape\preparelabel~\preparename}%វាយអត្ថបទដោយ អូល សាយ
		\hfil{\Large\color{pptec}\sffamily\thepage}%
		\hfil\textcolor{pptec!89!white}{\footnotesize\itshape វិទ្យាស្ថានគរុកោសល្យរាជធានីភ្នំពេញ}}%
	\def\@evenfoot{%
		\scriptsize\textcolor{pptec!89!white}{\footnotesize\itshape វិទ្យាស្ថានគរុកោសល្យរាជធានីភ្នំពេញ}%
		\hfil{\Large\color{pptec}\sffamily\thepage}%
		\hfil\scriptsize\textcolor{pptec!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
		}%
	}
%
\def\ps@pptec{%
	\def\@oddhead{%
		\textcolor{pptec!89!white}{\footnotesize\itshape \leftmark}%
		\hfil\textcolor{pptec!89!white}{\footnotesize\itshape \rightmark}}%
	\def\@evenhead{%
		\textcolor{pptec!89!white}{\footnotesize\itshape \rightmark}%
		\hfil\textcolor{pptec!89!white}{\footnotesize\itshape \leftmark}}%
	\def\@oddfoot{%
		\scriptsize\textcolor{pptec!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
		\hfil{\Large\color{pptec}\sffamily\thepage}%
		\hfil\textcolor{pptec!89!white}{\footnotesize\itshape វិទ្យាស្ថានគរុកោសល្យរាជធានីភ្នំពេញ}}%
	\def\@evenfoot{%
		\scriptsize\textcolor{pptec!89!white}{\footnotesize\itshape វិទ្យាស្ថានគរុកោសល្យរាជធានីភ្នំពេញ}%
		\hfil{\Large\color{pptec}\sffamily\thepage}%
		\hfil\scriptsize\textcolor{pptec!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
	}%
}
%
\pagestyle{pptec}
%
\def\arraystretch{1.25}
%
\def\baselinestretch{1.2}
\def\setminus{\ensuremath{{}-{}}}
%
\RequirePackage{cancel}
\def\CancelColor{\color{pptec}}
%
\RequirePackage{tkz-tab}
\tikzset{%
	t style/.style={draw=pptec},%
	h style/.style={pattern = north east lines,pattern color =pptec},%
	double style/.append style={draw=pptec},%
	arrow style/.style={->,draw=pptec},%
	from style/.append style={draw=pptec}}
\def\tkzTabDefaultLineWidth{1pt}
\RequirePackage{tkz-euclide}
\usetkzobj{all}
%
\endinput
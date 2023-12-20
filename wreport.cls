%
%  This latex profect is made by WangBo (School of Automation,HDU)王博-杭州电子科技大学自动化学院
%  wangbo@hdu.edu.cn     2022.12.15
%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%\bfseries是全局命令，加粗
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%\vspace*{} and \vspace{}前者在页面开头没作用%%%%%%%%%


\ProvidesClass{wreport}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass[12pt, openany, twoside]{article}%小四号 12pt
\RequirePackage[a4paper,
  inner=3.18cm, outer=3.18cm, top=2.54cm, bottom=2.54cm,
  bindingoffset=0cm]{geometry}

\RequirePackage[bf,pagestyles]{titlesec}
\RequirePackage{hyperref}
\hypersetup{
  colorlinks=true,
  citecolor=black,
  bookmarksnumbered=true,
  linkcolor=black,
  urlcolor=blue
}

\RequirePackage{indentfirst}
\RequirePackage{xeCJK}
\RequirePackage{tikz}%%%%%%%绘图宏包
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{epstopdf}
\RequirePackage[comma,numbers,square,sort&compress]{natbib}
\RequirePackage{paralist}
\RequirePackage{bm}
\RequirePackage{url}
\RequirePackage{graphicx}
\usepackage{subfigure} 
\RequirePackage{dcolumn} %%%%%%列表对齐
\RequirePackage{bbding}%%%%%%%%%%五角星
\RequirePackage{ifthen}
\RequirePackage{multirow}
\RequirePackage{zhnumber}
\RequirePackage{appendix}
%\RequirePackage{cite}
\RequirePackage[normalem]{ulem}
\RequirePackage{enumitem}
\RequirePackage{anyfontsize}%%%%%%保证不同尺寸的pt

\RequirePackage{algorithm2e}
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage{bookmark}
\RequirePackage{fancyvrb}%%%定义页眉页脚
\RequirePackage{fancyhdr}
\RequirePackage[marginal,perpage]{footmisc}
\RequirePackage{pifont}
\RequirePackage{etoolbox}
\RequirePackage{setspace}
\usepackage[titles,subfigure]{tocloft}



%%%%%%%%%%%%%%%%字体与字号设置%%%%%%%%%%%%%%%%%


\setCJKmainfont[AutoFakeBold=true]{SimSun}

\setCJKfamilyfont{zhsong}{SimSun}
\newcommand{\songti}{\CJKfamily{zhsong}}
\setCJKfamilyfont{zhhei}{SimHei}
\newcommand{\heiti}{\CJKfamily{zhhei}}
\setCJKfamilyfont{zhkai}{KaiTi}
\newcommand{\kaiti}{\CJKfamily{zhkai}}
\setCJKfamilyfont{zhfs}{FangSong}
\newcommand{\fs}{\CJKfamily{zhfs}}

\newcommand{\chuhao}{\fontsize{42pt}{46pt}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}{40pt}\selectfont}
\newcommand{\yichu}{\fontsize{32pt}{36pt}\selectfont}
\newcommand{\yihao}{\fontsize{28pt}{32pt}\selectfont}
\newcommand{\erhao}{\fontsize{21pt}{24pt}\selectfont}
\newcommand{\xiaoerhao}{\fontsize{18pt}{18pt}\selectfont}
\newcommand{\sanhao}{\fontsize{15.75pt}{15.75pt}\selectfont}
\newcommand{\xiaosanhao}{\fontsize{15pt}{15pt}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{14pt}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12pt}{12pt}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{11pt}\selectfont}
\newcommand{\xiaowuhao}{\fontsize{9pt}{11pt}\selectfont}
\newcommand{\liuhao}{\fontsize{7.5pt}{9pt}\selectfont}
\newcommand{\xiaoliuhao}{\fontsize{6.5pt}{7.5pt}\selectfont}
\newcommand{\qihao}{\fontsize{5.5pt}{6.5pt}\selectfont}


%%%%%%%%%%%%%%%目录列表的格式设置%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand\cftsecdotsep{\cftdotsep}
\renewcommand\cftsecleader{\cftdotfill{\cftsecdotsep}}
\renewcommand{\cftdotsep}{0.5}%%%%目录等点与点间距离
\renewcommand{\cftsecfont}{\heiti} %设置section条目的字体
\renewcommand{\cftsubsecfont}{\heiti} %设置subsection条目的字体
\setlength\cftbeforesecskip{2pt}
\setlength\cftbeforesubsecskip{0em}
% \cftsetindents{section}{21pt}{22pt}%%%%%调整indent到章的宽度
% \cftsetindents{subsection}{44pt}{31pt}
% \cftsetindents{subsubsection}{76pt}{41pt}

%%%%%%%%%%%%%%%%%%%%%%%文本格式设置%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\linespread{1.4}%行距设置
\setlength\parindent{2em}%首行缩进
\titlespacing{\section}{0pt}{18pt}{6pt}
\titlespacing{\subsection}{0pt}{12pt}{6pt}
\titlespacing{\subsubsection}{0pt}{12pt}{6pt}
\setlength{\parskip}{0pt}% 段距

%%%%%%%%%%%%%%节字号设置%%%%%%%%%%%%%%%%
\titleformat{\section}[block]
  {\xiaosanhao\heiti}%%%%%%%%字体
  {\thesection}{7pt}{}%%%%%%%%%%%标号与文字间距

\titleformat{\subsection}[block]
  {\sihao\heiti}
  {\thesubsection}{7pt}{}

\titleformat{\subsubsection}[block]
  {\xiaosihao\heiti}
  {\thesubsubsection}{6pt}{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% %%%%%%%%%%%%%公式与定理环境%%%%%%%%%
%%%%%%%%%%%%%%%%公式编号设置%%%%%%%%%%%%%%
\numberwithin{equation}{section}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newtheorem{theorem}{定理}[section]
\newtheorem{axiom}[theorem]{公理}
\newtheorem{corollary}[theorem]{推论}
\newtheorem{lemma}[theorem]{引理}
\newtheorem{definition}[theorem]{定义}
\newtheorem{example}[theorem]{举例}
\newtheorem{proposition}[theorem]{命题}
\newtheorem{problem}[theorem]{问题}
\newtheorem{assumption}[theorem]{假设}

\renewcommand{\proofname}{\bfseries 证明}


%%%%%%%%%%%%%%%页眉页脚设置%%%%%%%%%%%%%%%%%%%
\pagestyle{plain}%%%%%%%%%%%%%%%%%%%%%%页眉页脚风格设置
%%%%%%%%%%%%%%%%%%%%%%%插入图片%%%%%%%%%%%%%%%%%%%%%%%%
\graphicspath{{./pics/}}
%%%%%%%%%%%%%%%需要用到的命令%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%英文的标号变成中文%%%%%%%%%%%
\newcommand\half@space{\hspace{10pt}}
\newcommand\one@space{\phantom{一}}
\newcommand\two@space{\phantom{一二}}

%%%%%%%%%%%%章节型中文名字设置%%%%%%%%%%%%%%
\renewcommand{\contentsname}{\centerline{目\half@space 次}}
\renewcommand{\bibname}{参考文献}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\renewcommand{\listtablename}{\centerline{附\half@space 表\half@space 清\half@space 单}}
\renewcommand{\listfigurename}{\centerline{插\half@space 图\half@space 清\half@space 单}}
\SetAlgorithmName{算法}{算法}{算法列表} 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





%%%%%%%圆圈数字的脚注设置%%%%%%%%%%%%%%
%\makeatletter是在tex文档中使用latex的命令@
\newcommand*{\circnum}[1]{%
  \expandafter\@circnum\csname c@#1\endcsname
}
\newcommand*{\@circnum}[1]{%
  \ifnum#1<1 %
    \@ctrerr
  \else
    \ifnum#1>20 %
      \@ctrerr
    \else
      \ding{\the\numexpr 171+(#1)\relax}%
    \fi
  \fi
}
%\makeatother
\renewcommand*{\thefootnote}{\circnum{footnote}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%生成目录%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\let\tableofcontents@orig=\tableofcontents
\renewcommand{\tableofcontents}{
  \fancyhf{}
  \pagenumbering{Roman}
  \pdfbookmark{目次}{toc}
  \tableofcontents@orig
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%生成图列表%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\figurelist}{
  \newpage
  \addtolength{\cftfignumwidth}{12pt}
  \renewcommand{\cftfigpresnum}{\figurename}
  \listoffigures
}


%%%%%%%%%%%%%%%%%%%生成表格列表%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\tablelist}{
  \newpage
  \addtolength{\cfttabnumwidth}{12pt}
  \renewcommand{\cfttabpresnum}{\tablename}
  \listoftables
  
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\myintroduction}{
\section*{引言}
\addcontentsline{toc}{section}{引言}
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\mytitle}{
  % \title{\heiti\sanhao 正\one@space 文\vspace{-1.5cm}}
  % \date{}
  % \maketitle
  \newpage
  \begin{center}
    {\heiti\sanhao 正\one@space 文}
  \end{center}
  \vspace{0.3cm}
  \setcounter{page}{1}
  \pagenumbering{arabic}
}


%%%%%%%%%%%%%%%%参考文献设置%%%%%%%%%%%%%%%%%%%
\setlength{\bibsep}{0em}%%%%%%%调整间距
\renewcommand{\citep}[1]{\textsuperscript{\cite{#1}}}
\newcommand{\wbibliography}[1]{
  \bibliographystyle{wreport}
  \begingroup
  \renewcommand{\section}[2]{}
  \bibliography{#1}
  \endgroup}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\myreference}{
\newpage
\section*{\sanhao\centerline{参\half@space 考\half@space 文\half@space 献}}
\vspace{0.5cm}
\addcontentsline{toc}{section}{参考文献}
}

%%%%%%%%%%%%%%%%%%%%%%%%附录%%%%%%%%%%%%%%%%%%%%
\newcommand{\myappendix}{
  \newpage
  \appendix
  \interlinepenalty=0
  \section*{\sanhao\centerline{附\half@space 录}}
  \vspace{0.5cm}
  \addtocontents{toc}{\protect\addtolength{\cftsecnumwidth}{24pt}}
  \renewcommand{\thesection}{附录\Alph{section}}
  \renewcommand{\thesubsection}{\Alph{section}.\arabic{subsection}}
  \renewcommand{\appendixname}{附录}
  \section{主要成果情况}
  % \addcontentsline{toc}{section}{附录}
  }


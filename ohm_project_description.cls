\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ohm_project_description}[2023/10/05 v1.0 Project Description Class]
\LoadClass{article}


\RequirePackage[utf8]{inputenc}
\RequirePackage[ngerman]{babel}

% Load necessary packages
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{hyperref}
\RequirePackage{enumitem}
\RequirePackage{xcolor}


\RequirePackage{sidecap}
\sidecaptionvpos{figure}{c}
% Set up page geometry
\geometry{a4paper, top=2cm, bottom=2cm, left=2cm, right=2cm}	

% Define header and footer
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\fancyhead[L]{\includegraphics[height=2.0cm]{img/logo_autonohm.png}}
\fancyhead[R]{veröffentlicht am \today}

% Define title format
\titleformat{\section}{\normalfont\Large\bfseries}{\thesection}{1em}{}
\titleformat{\subsection}{\normalfont\large\bfseries}{\thesubsection}{1em}{}

% Define custom commands
\newcommand{\projecttitle}[1]{\def\@projecttitle{#1}}
\newcommand{\projectauthor}[1]{\def\@projectauthor{#1}}
\newcommand{\projectdate}[1]{\def\@projectdate{#1}}

\definecolor{ohm_red}{RGB}{192,0,0}

\RequirePackage{titling}
\pretitle{\begin{flushleft}\LARGE}
\posttitle{\end{flushleft}}
\preauthor{\begin{flushleft}\large}
\postauthor{\end{flushleft}}

\setlength{\parindent}{0pt}

\pretitle{\begin{flushleft}\huge\textbf{\textcolor{ohm_red}}}
\posttitle{\end{flushleft}}

\pretitle{\begin{flushleft}\huge\textbf{\textcolor{ohm_red}}\rule{\linewidth}{0.4mm}\\}
\posttitle{\\\rule{\linewidth}{0.4mm}\end{flushleft}}
\newcommand{\@projecttitle}{}
\title{\textcolor{ohm_red}{\@projecttitle}}




% % Define title page
% \renewcommand{\maketitle}{
%     \begin{titlepage}
%         \centering
%         \vspace*{2cm}
%         {\Huge \@projecttitle \par}
%         \vspace{1.5cm}
%         {\Large \@projectauthor \par}
%         \vfill
%         {\Large \@projectdate \par}
%     \end{titlepage}
% }

% End of class definition
\endinput
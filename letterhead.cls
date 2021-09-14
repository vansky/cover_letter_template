%%%%%%%%%%%%%%%%%
%%Document Class for Letterhead
%%
%%After \begin{document}, 
%%\addressee{RecipientName\\Address1\\Address2\\City, State  Z1PC0D3}
%%Then \opening{Dear Mr. Sample,}
%%Then text
%%After text,
%%\closing{Sincerely,}\\
%%\vspace{.75in}\\
%%\signature{SenderName}{SenderPosition}
%%
%%To change the formatting from the first page to the following pages, particularly to get %%rid of the large white space at the top, insert:
%%\newpage \followingpageformat
%%where you want to break the page. 
%%
%%Consider using the command \raggedright{} or the environment flushleft on the individual %%pages- University standard is left-justified, not fully justified. Having the 
%%environment cross the pagebreak screws up the formatting, however.
%%
%%Commands defined by this class:
%%\addressee (lists today's date and the recipient's address)
%%\opening (prints an opening of the sender's choosing)
%%\closing (prints a closing of the sender's choosing)
%%\signature (prints a text signature- default two lines)
%%\followingpageformat (reformats pages to get rid of the header space, meant to be used 
%%for any page after the first)
%%
%%Pagestyles defined by this class:
%%firstpage (provides the letterhead)
%%plain (all blank except the page number bottom center)
%%
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{letterhead}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[12pt, oneside]{article}   
\RequirePackage[letterpaper]{geometry}

%% TO FILL: You may need to tweak the margins depending on your header height
\geometry{ height=9in, width=6in, lmargin=1.25in, top=48pt, headheight=28pt, headsep=20pt, heightrounded}                   
\RequirePackage[parfill]{parskip}    		
\RequirePackage{graphicx}				
\RequirePackage[usenames,dvipsnames,svgnames,table]{xcolor}
\RequirePackage{times}
\RequirePackage{multicol}
\RequirePackage{fancyhdr}
\RequirePackage{etoolbox}
\RequirePackage[outdir=./]{epstopdf}
\definecolor{red}{HTML}{b31b1b}%Official carnelian
\definecolor{gray}{HTML}{222222}%Official grey
\definecolor{white}{HTML}{ffffff}%Official white
\fancypagestyle{plain}{%
\fancyhf{} % clear all header and footer fields
\fancyfoot[C]{\thepage} % except the center
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}}
\fancypagestyle{firstpage}{
\fancyheadoffset[L]{0in}
\fancyheadoffset[R]{0in}

%% TO FILL: Logo goes here
%%    Change the width to fit your desired dimensions
%%    Change the raisebox to accomodate logos with different aspect ratios
\lhead{\raisebox{15pt}{\includegraphics[width=2.5in, keepaspectratio=true]{LOGO.EPS}}}%logo
\chead{}

%% TO FILL: Your details go here
\rhead{{\fontfamily{palatino}\selectfont\small FirstName Surname\\
  Job Title\\
  Department Name\\
  University Name\\
  Email Address}}

\fancyfoot{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
}
\pagestyle{plain}
\AtBeginDocument{\newgeometry{height=7.5in, lmargin=1.25in, width=6in, top=135pt, headheight=135pt, headsep=22pt, bmargin=1in, heightrounded}}
\AtBeginDocument{\thispagestyle{firstpage}}
\newcommand{\followingpageformat}{\restoregeometry}
\usefont{OT1}{ptm}{m}{n}
\newcommand{\opening}[1]{#1}
\newcommand{\closing}[1]{#1}
\newcommand{\signature}[2]{#1\\#2}
\newcommand{\addressee}[1]{\today\\
\ \\
#1}

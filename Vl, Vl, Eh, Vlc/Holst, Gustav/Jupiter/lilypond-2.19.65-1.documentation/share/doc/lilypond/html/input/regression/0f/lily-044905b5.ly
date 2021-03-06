%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/markup-lines-identifier.ly"
\sourcefileline 0
\version "2.16.0"

\header {
  texidoc = "Text that can spread over pages is entered with the
@code{\\markuplist} command. It can be assigned to a variable and inserted
at top-level with or without preceding it by @code{\\markuplist}."
}

#(set-default-paper-size "a6")

mytext = \markuplist {
  \justified-lines {
    Lorem ipsum dolor sit amet, consectetur adipisici elit, sed
    eiusmod tempor incidunt ut labore et dolore magna aliqua. ...
  }
}

\markuplist \mytext
\mytext



% ****************************************************************
% end ly snippet
% ****************************************************************

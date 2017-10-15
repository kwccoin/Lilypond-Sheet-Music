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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/spacing-paper-column-padding.ly"
\sourcefileline 0
\version "2.17.6"

\header {
  texidoc = "The space after a paper column can be increased by overriding
the padding property."
}

\layout {
  \context {
    \Score
    \override PaperColumn.padding = #10
    \override NonMusicalPaperColumn.padding = #10
  }
}

{a b}



% ****************************************************************
% end ly snippet
% ****************************************************************

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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/line-style-zigzag-spacing.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "Setting @code{'zigzag} style for spanners does not
cause spacing problems: in this example, the first text markup and
zigzag trillspanner have the same outside staff positioning as
the second markup and default trillspanner.
"
}

\relative {
  c'1^"text"
  \override TrillSpanner.style = #'zigzag
  c1\startTrillSpan
  c2^\stopTrillSpan c^"text"
  \revert TrillSpanner.style
  c1\startTrillSpan
  c1^\stopTrillSpan
}



% ****************************************************************
% end ly snippet
% ****************************************************************

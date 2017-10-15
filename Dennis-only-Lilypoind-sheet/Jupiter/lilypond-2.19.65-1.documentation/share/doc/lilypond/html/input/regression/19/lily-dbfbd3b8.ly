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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/repeat-tremolo-beams.ly"
\sourcefileline 0
\version "2.16.0"

\header {
  texidoc = "Each of the staves here should have four tremolo beams."
}

\paper { ragged-right = ##t }
<<
  \repeat tremolo 8 { c64 e64 }
  \repeat tremolo 12 { c64 e64 }
  \repeat tremolo 14 { c64 e64 }
  \repeat tremolo 15 { c64 e64 }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************

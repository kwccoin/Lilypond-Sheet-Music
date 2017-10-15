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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/bar-number-check-warning.ly"
\sourcefileline 0
\version "2.19.21"
#(ly:set-option 'warning-as-error #f)
#(ly:expect-warning (_ "Barcheck failed got ~a expect ~a") 3 15)

\header {

texidoc="Bar numbers check may be inserted to check whether the current
bar number is correct.
"

}

\relative {
  c''1 | 
  \barNumberCheck #2 % OK
  c1 |
  \barNumberCheck #15 % Warning
  c1
}



% ****************************************************************
% end ly snippet
% ****************************************************************

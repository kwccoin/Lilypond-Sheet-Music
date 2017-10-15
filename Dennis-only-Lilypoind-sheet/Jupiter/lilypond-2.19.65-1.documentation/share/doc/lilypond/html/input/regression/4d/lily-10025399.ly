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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/cluster-break.ly"
\sourcefileline 0

\version "2.19.21"
\header {
  texidoc = "Clusters behave well across line breaks."
}

\layout { ragged-right = ##t }

fragment = \relative {
  \time 2/4 
  <e' d'>4
  <g a>4 | \break
  <e a>
  <f a>
}

<< \new Staff \makeClusters \fragment
   \new Staff \fragment
>>





% ****************************************************************
% end ly snippet
% ****************************************************************

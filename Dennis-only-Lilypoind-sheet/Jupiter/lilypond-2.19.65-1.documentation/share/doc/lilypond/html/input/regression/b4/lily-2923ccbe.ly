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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/measure-grouping.ly"
\sourcefileline 0

\header
{

  texidoc = "The @code{Measure_grouping_engraver} adds triangles and
brackets above beats when the beats of a time signature are grouped.  "

}

\version "2.19.40"

\layout  {
  ragged-right = ##t
}

%% TODO: should have 2/4 + 5/8 time sig style.

\context Staff \with {
    \consists "Measure_grouping_engraver"
  }

\relative {
  \time 2/4 
  c'8 a'4 a8~
  \time 3,2 5/8 
  a8 bes4 r8 bes8->
  \time 2/4
  c,8 g'4 g8~
  \time 3,2 5/8 
  g8 a4 g a4.->
}





% ****************************************************************
% end ly snippet
% ****************************************************************

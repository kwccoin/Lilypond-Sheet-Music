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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/beam-feather.ly"
\sourcefileline 0
\header  {

  texidoc = "Specifying @code{grow-direction} on a beam, will cause
  feathered beaming. The @code{\\featherDurations} function can be used
  to adjust note durations."
  
}

\version "2.19.21"

\paper {
  ragged-right = ##t
  indent = #0.0
}

%
% Unfortunately this quickly bumps into overflow problems. Should use
% a linear decrease instead?
%

\featherDurations #(ly:make-moment 3/4) \relative {
  \override Beam.grow-direction = #LEFT
  c''16[
    c c c
    c c c c ] 
}



% ****************************************************************
% end ly snippet
% ****************************************************************

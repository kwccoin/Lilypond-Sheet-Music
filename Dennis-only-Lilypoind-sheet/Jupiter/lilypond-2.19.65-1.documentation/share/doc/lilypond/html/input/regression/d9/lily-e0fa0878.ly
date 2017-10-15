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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/glissando-chord.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "LilyPond typesets glissandi between chords."
}

\relative {
  c'1 \glissando g'
  c,1 \glissando s1 g'
  <c, e>1 \glissando <g' b>
  <c, e>1 \glissando s1 <g' b>
  \set glissandoMap = #'((0 . 1) (1 . 0))
  <c, g'>1 \glissando s1 <d a'>
  \set glissandoMap = #'((0 . 0) (0 . 1) (0 . 2))
  c1 \glissando s1 <d f a>
  \set glissandoMap = #'((2 . 0) (1 . 0) (0 . 0))
  <d f a>1 \glissando s1 c
}



% ****************************************************************
% end ly snippet
% ****************************************************************

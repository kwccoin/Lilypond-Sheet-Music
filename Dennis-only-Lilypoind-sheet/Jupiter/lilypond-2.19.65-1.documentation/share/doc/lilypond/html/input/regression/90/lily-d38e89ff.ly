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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/glissando-dots.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "Glissandi begin after dots by default.  This behavior may
be changed by overriding the @code{start-at-dot} property.
"
}

\layout {
  indent = 0
  ragged-right = ##t
}

\relative {
  c''2.\glissando b4
  c2..\glissando b8
  c2...\glissando b16
  \bar "||"
  <c e g>2. -\tweak style #'trill \glissando <g b d>4
  \bar "||"
  c2...\glissando g''16
  \override Glissando.bound-details.left.start-at-dot = ##f
  c,,2...\glissando g''16
}



% ****************************************************************
% end ly snippet
% ****************************************************************

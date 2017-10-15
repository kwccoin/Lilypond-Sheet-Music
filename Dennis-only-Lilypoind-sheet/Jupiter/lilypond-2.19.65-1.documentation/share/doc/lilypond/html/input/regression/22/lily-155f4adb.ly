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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/chord-tremolo-short.ly"
\sourcefileline 0
\version "2.16.0"
\header {
  texidoc = "
  Tremolo repeats can be constructed for short tremolos (total duration smaller than 1/4) too. Only some of the beams are connected to the stems. 
  "
}
\layout { ragged-right = ##t }


\context Staff  \relative c' {
  \repeat "tremolo"  2 { c32 e32 }
  \stemDown
  \repeat "tremolo"  2 { c32 e32 }
}





% ****************************************************************
% end ly snippet
% ****************************************************************

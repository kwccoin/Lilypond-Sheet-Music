%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote]
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
  line-width = 160\mm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 837
\new Staff \relative {
  %% inserimento abbreviato
  <<
    { f''2  }  % 1: più alta
    \\
    { g,2 }  % 2: più bassa
    \\
    { d'2 }  % 3: più alta centrale
    \\
    { b2  }  % 4: più  bassa centrale
  >>
  %% espansione interna dell'input precedente
  <<
    \new Voice = "1" { \voiceOne   \shiftOff f'2 }
    \new Voice = "2" { \voiceTwo   \shiftOff g,2 }
    \new Voice = "3" { \voiceThree \shiftOn  d'2 } % sposta a destra
    \new Voice = "4" { \voiceFour  \shiftOn  b2  } % sposta a sinistra
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************

%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote,ragged-right]
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
  ragged-right = ##t
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 1287
\include "gregorian.ly"
\score {
  <<
    \context VaticanaVoice {
      \override TextScript.padding = #3
      g a g
      s^\markup { "divisio minima" }
      \divisioMinima
      g a g
      s^\markup { "divisio maior" }
      \divisioMaior
      g a g
      s^\markup { "divisio maxima" }
      \divisioMaxima
      \break
      g a g
      s^\markup { "finalis" }
      \finalis
      g a g
      s^\markup { "virgula" }
      \virgula
      g a g
      s^\markup { "caesura" }
      \caesura
      g a g
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************

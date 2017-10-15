%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=13.0\cm,notime,quote]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 13.0\cm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  line-width = 13.0\cm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
 \context {
   \Score
   timing = ##f
 }
 \context {
   \Staff
   \remove "Time_signature_engraver"
 }
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 3340
<<
  \new Staff {
    \relative c'' {
      gis1 as <des g,!> <cis g!>
    }
  }
  \lyrics {
    "g sharp  " "a flat  " "dim fifth  " "augm fourth"
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************

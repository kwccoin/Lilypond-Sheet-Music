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
\sourcefileline 136
  SopranoMusic = \relative { a' a a a }
  AltoMusic = \relative { f' f f f }
  VerseOne = \lyricmode {
    \set stanza = "1."
    Parole per prima strofa
  }
  VerseTwo = \lyricmode {
    \set stanza = "2."
    Parole per seconda strofa
  }
  VerseThree = \lyricmode {
    \set stanza = "3."
    Parole per terza strofa
  }
  TenorMusic = \relative { a a a a }
  BassMusic = \relative { f f f f }
  TwoVoicesPerStaff = ##t
  \include "satb.ly"



% ****************************************************************
% end ly snippet
% ****************************************************************

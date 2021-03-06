%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=13.0\cm,quote]
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
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 5651
\score{
\relative c'' {
  \set Score.initialTimeSignatureVisibility = #all-invisible
  \override Score.TimeSignature #'break-visibility = #all-invisible
  \time 4/4
  \key g \major
  \partial 8 g16\startGroup fis |
  g8\stopGroup d16\startGroup c d8\stopGroup g16 fis g8 b,16 a b8 g'16 fis |
  g8 g,16 a b8 cis d16 s
}
\layout {
	\context {
		\Staff \consists "Horizontal_bracket_engraver"
}}
}



% ****************************************************************
% end ly snippet
% ****************************************************************

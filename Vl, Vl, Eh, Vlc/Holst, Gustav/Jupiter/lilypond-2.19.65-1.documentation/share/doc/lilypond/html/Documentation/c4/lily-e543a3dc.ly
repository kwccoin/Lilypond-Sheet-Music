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
\sourcefileline 813
\new Staff \relative {
  \key aes \major
  \voices 1,2,4    % Nessuna terza voce
  <<  % Prima voce
    { c''2 aes4. bes8 }
  \\  % Voce due
    {
      % Puoi ignorare questi per ora, saranno spiegati nel capitolo 4
      \once \override NoteColumn.force-hshift = #0
      <ees, c>2
      \once \override NoteColumn.force-hshift = #0.5
      des2
    }
  \\  % Quarta voce
    {
      \override NoteColumn.force-hshift = #0
      aes'2 f4 fes
    }
  >> |
  <c ees aes c>1 |
}



% ****************************************************************
% end ly snippet
% ****************************************************************

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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/part-combine-mmrest-apart.ly"
\sourcefileline 0
\version "2.17.6"

\header {
  texidoc = "
The positioning of multimeasure rests in @code{\\partcombineApart}
passages corresponds with @code{\\voiceOne} and @code{\\voiceTwo} even
when using non-standard staves.
"
}

\layout {
  indent = 4\cm
  raggedright = ##t
}

\new StaffGroup
<<
  \new Staff \with
    { \override StaffSymbol.line-count = #4
      instrumentName = \markup \typewriter "\\partcombine"
    }
  {
    \partcombine  { R1^"R1" r1^"r1"  \time 2/4 R2^"R2" r2^"r2" }
    { \partcombineApart R1 r1 \time 2/4 R2 r2 }
    
  }
  \new Staff \with
    { \override StaffSymbol.line-count = #4
      instrumentName = \markup \typewriter "<< ... \\\\ ... >>"
    }
  <<
    { R1 r1 \time 2/4 R2 r2 } \\
    { R1 r1 \time 2/4 R2 r2 }
  >>
>>



% ****************************************************************
% end ly snippet
% ****************************************************************

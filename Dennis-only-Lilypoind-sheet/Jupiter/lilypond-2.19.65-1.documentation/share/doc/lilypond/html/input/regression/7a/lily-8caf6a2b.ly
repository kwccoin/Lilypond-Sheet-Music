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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/part-combine-mmrest-shared.ly"
\sourcefileline 0
\version "2.19.20"

\header {
  texidoc = "Multi-measure rests do not have to begin and end simultaneously to be combined."
}

\score { <<
  \compressMMRests
  \partcombine
    \relative f' { R1*8  | R1*16     | R1*4 }
    \relative f' { R1*16     | R1*8  | R1*4 }
>> }

\score { <<
  \compressMMRests
  \partcombine
    \relative f' { R1*8  | r1^"r" | R1*15     | R1*4 }
    \relative f' { R1*16              | R1*8  | R1*4 }
>> }

\score { <<
  \compressMMRests
  \partcombine
    \relative f' { R1*16              | R1*8  | R1*4 }
    \relative f' { R1*8  | r1_"r" | R1*15     | R1*4 }
>> }



% ****************************************************************
% end ly snippet
% ****************************************************************

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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/fretboard-chordchanges.ly"
\sourcefileline 0
\header{
  
  texidoc = "FretBoards can be set to display only when the chord changes
or at the beginning of a new line."

}
  
  \version "2.16.0"

myChords = \chordmode {
  c1 c1 \break
  c1 c1 \break
  c2 c4 c4 \break
  \set chordChanges = ##t
  c1 c1 \break
  c2 c4 c4 \break
}

<<
  \new ChordNames { \myChords }
  \new FretBoards { \myChords }
  \new Staff { \myChords }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************

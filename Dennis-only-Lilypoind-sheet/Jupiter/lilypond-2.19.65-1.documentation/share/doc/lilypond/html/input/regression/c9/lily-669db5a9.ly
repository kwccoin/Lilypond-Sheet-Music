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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/spacing-short-notes.ly"
\sourcefileline 0

\version "2.19.21"
\header {
  
  texidoc = "Notes that are shorter than the common shortest note get a
space (i.e. without the space needed for the note) proportional to
their duration. So, the 16th notes get 1/2 of the space of an eighth note.
The total distance for a 16th (which includes note head) is 3/4 of the
eighth note. "

}

\layout { ragged-right = ##t}

\relative
{
  \time 2/4 
  c''16 c c c c4 c4
  c8 c8 c8 c8
  c8 c8 c4
  c8 c8 c4

}







% ****************************************************************
% end ly snippet
% ****************************************************************

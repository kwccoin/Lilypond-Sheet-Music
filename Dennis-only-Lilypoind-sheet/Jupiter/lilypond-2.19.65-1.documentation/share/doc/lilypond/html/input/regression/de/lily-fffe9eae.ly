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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/spacing-no-note.ly"
\sourcefileline 0
\header {

  texidoc = "In the absence of NoteSpacings, wide objects still get
extra space. In this case, the slash before the barline gets a little
more space. "

}
\layout { ragged-right  = ##t }
\version "2.16.0"
{
  \time 2/4 
  \repeat "percent" 3  { c'4 }
}



% ****************************************************************
% end ly snippet
% ****************************************************************

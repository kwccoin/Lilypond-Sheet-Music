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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/stem-tremolo-note-column.ly"
\sourcefileline 0
\version "2.19.21"
\header{
  texidoc="Stem tremolos count in a note column's horizontal skyline.
"
}


\relative {
  \autoBeamOff
  \override NoteHead.stencil = #(ly:make-stencil '() '(0 . 0) '(0 . 0))
  \repeat unfold 8 { b'8:32 }
}



% ****************************************************************
% end ly snippet
% ****************************************************************

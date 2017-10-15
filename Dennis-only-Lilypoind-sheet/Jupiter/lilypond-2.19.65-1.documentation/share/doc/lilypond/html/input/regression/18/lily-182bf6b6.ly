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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/paper-default-margins-a6.ly"
\sourcefileline 0
\version "2.16.0"

\header {
  texidoc = "Default values for margins, indents, and offsets are
accessible in paper-defaults-init.ly and apply to the default
paper size returned by (ly:get-option 'paper-size).  For other
paper sizes, they are scaled linearly."
}

someNotes = \repeat unfold 20 { c4 d e f }

\paper {
  #(set-paper-size "a6")
}

\book {
  \markup { For other paper sizes, margins are scaled accordingly. }
  \score {
    \relative c' {
      \someNotes
    }
  }
}




% ****************************************************************
% end ly snippet
% ****************************************************************

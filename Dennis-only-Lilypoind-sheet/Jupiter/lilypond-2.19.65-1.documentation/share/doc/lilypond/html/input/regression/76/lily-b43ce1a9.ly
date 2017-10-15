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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/modern-tab-clef-scaled.ly"
\sourcefileline 0
\version "2.19.21"

\header{ texidoc = "The sans serif style tab clef is automatically adjusted to
                    different string spacings."
       }

guitar = \relative {
  c4 d e f
  e4 d c2
}

\score {
  <<
    \new Staff {
      \clef "treble_8"
      \guitar
    }
    \new TabStaff {
      \clef "moderntab"
      \set TabStaff.stringTunings = #guitar-tuning
      \guitar
    }
  >>
}

\score {
  <<
    \new Staff {
      \clef "treble_8"
      \guitar
    }
    \new TabStaff {
      \clef "moderntab"
      \set TabStaff.stringTunings = #guitar-tuning
      \override TabStaff.StaffSymbol.staff-space = #1.0 % default value is 1.5
      \guitar
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************

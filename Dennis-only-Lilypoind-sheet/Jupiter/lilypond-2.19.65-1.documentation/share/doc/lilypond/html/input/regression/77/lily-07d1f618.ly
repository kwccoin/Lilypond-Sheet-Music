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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/tuplet-number-kneed-beam-positions.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "Tuplet numbers are placed next to kneed beams when
@code{Beam.positions} is overridden."
}

\layout {
  indent = 0
  ragged-right = ##t
}

top = \change Staff = "1"
bottom = \change Staff = "2"

music = \relative {
  \override Beam.auto-knee-gap = 1
  \tuplet 3/2 4 {
    c8 \top e'' \bottom g,,
    \once \override Beam.positions = #'(4.5 . 4.5)
    c,8 \top e'' \bottom g,,
    \once \override Beam.positions = #'(-7.0 . -7.0)
    \top e''8 \bottom c,, c,
    \once \override Beam.positions = #'(-4.5 . -4.5)
    \top e'''8 \bottom c,, c,
  }
}

\score {
  \new PianoStaff <<
    \new Staff = "1" {
      s1
    }
    \new Staff = "2" {
      \clef bass
      \music
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************

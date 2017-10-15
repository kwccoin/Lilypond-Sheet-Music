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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/beam-collision-cross-staff.ly"
\sourcefileline 0
\header {
  texidoc = "cross staff beams work with collisions."
}

\version "2.19.21"

<<
 \new Staff = "PianoRH" s4.
 \new Staff = "PianoLH" {
   d''8 [b''! \change Staff = "PianoRH"  d'' ]
 }
>>

<<
  \new Staff = up \relative {
    c'8 c c c
    c c c c
    b' b b b
  }
  \new Staff = down \relative {
    s8 c' c \change Staff = up c
    \change Staff = down c [ c s16 \change Staff = up a'16 s16 a16 ]
    \stemUp
    \change Staff = down b8 b b b \change Staff = up
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************

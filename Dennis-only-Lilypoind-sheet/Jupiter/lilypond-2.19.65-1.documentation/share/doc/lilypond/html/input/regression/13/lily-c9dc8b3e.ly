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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/metronome-range.ly"
\sourcefileline 0
\version "2.17.25"

\header {
  texidoc = "
Tempo ranges are supported.  By default, numbers are
printed with an en-dash character, separated by thin-spaces.
"
}

\relative c'' {
  \tempo 4 = 66 - 72
  c1 | c
  $(make-event-chord (list (make-music 'TempoChangeEvent
                                        'tempo-unit (ly:make-duration 2 0 1/1)
                                        'metronome-count (cons 124 132))))
  c1 | c
}



% ****************************************************************
% end ly snippet
% ****************************************************************

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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/instrument-name-pedal-lyrics.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "@code{Dynamics} and @code{Lyrics} lines below
a @code{PianoStaff} do not affect the placement of the instrument name."
}

upper = \relative {
  a'4 b c d
}

lower = \relative {
  \clef bass
  a,2 c
}

\score { 
<<
  \new PianoStaff 
  <<
    \set PianoStaff.instrumentName = #"Piano"
    \new Staff = "Staff_pfUpper" << \upper >>
    \new Staff = "Staff_pfLower" << \lower >>
    \new Dynamics { s2\sustainOn s\sustainOff }
  >>

  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano"
    \new Staff = "Staff_pfUpper" << \upper >>
    \new Staff = "Staff_pfLower" << \lower >>
    \new Lyrics \lyricmode { la2 la2 }
  >>

  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano"
    \new Staff = "Staff_pfUpper" << \upper >>
    \new Staff = "Staff_pfLower" << \lower >>
  >>
>>
}



% ****************************************************************
% end ly snippet
% ****************************************************************

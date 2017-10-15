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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/hara-kiri-stanza-number.ly"
\sourcefileline 0

\header {

  texidoc = "stanza numbers remain, even on otherwise empty lyrics
lines."
	  
}

\paper {
  indent = #0.0
  ragged-right = ##T
}

\version "2.19.2"

<<
  \new Voice = melody \relative c'{
    r2 r4 r8 e8 |\break
    e16 e8. 
  }
  \new Lyrics \lyricsto "melody" { 
    \set stanza = "Verse 2."
    _ bla bla  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************

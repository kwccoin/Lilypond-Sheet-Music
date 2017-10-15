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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/lyrics-aligned-above-stay-close-to-staff.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  title = "Aligned-above lyrics should stay close to their staff"
  texidoc = "Lyrics aligned above a context should stay close to that
context when stretching.  The Bass I lyric line stays with the
Bass staff.
"
}

\paper { ragged-last-bottom = ##f }

tune = \relative { \repeat unfold 2 { c4( e) g2 | \break c1 }
\bar "|."  }

\score {

  \context ChoirStaff <<

    \new Staff = tenors <<
      \clef "treble_8"
      \new Voice = tenori { \voiceOne \tune }
      \new Voice = tenorii { \voiceTwo \tune }
    >>
    \new Staff = basses <<
      \clef "bass"
      \new Voice = bassi { \voiceOne \tune }
      \new Voice = bassii { \voiceTwo \tune }
    >>

    \new Lyrics \with {alignAboveContext=tenors} \lyricsto tenori {
      Te -- nor one!  A -- _ bove!
    }
    \new Lyrics \with {alignBelowContext=tenors} \lyricsto tenorii {
      Te -- nor two!  Be -- _ low!
    }
    \new Lyrics \with {alignAboveContext=basses}  \lyricsto bassi {
      Bas -- ses one!  A -- _ bove!
    }
    \new Lyrics \with {alignBelowContext=basses} \lyricsto bassii {
      Bas -- ses two!  Be -- _ low!
    }
  >>
  \layout {}
 }



% ****************************************************************
% end ly snippet
% ****************************************************************

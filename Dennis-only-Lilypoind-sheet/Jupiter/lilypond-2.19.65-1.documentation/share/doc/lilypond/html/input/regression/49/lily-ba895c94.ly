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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/lyric-combine-nullvoice.ly"
\sourcefileline 0
\version "2.19.11"
\header {
  texidoc ="Lyrics can be aligned to a @code{NullVoice} context,
  which prints no notes, with the usual mechanisms for melismata."
}
\paper { ragged-right = ##f }
\score { <<
  \new Staff <<
    { c''4. g'8 c''2 | g'8( f' g'4)~ g'2 } \\
    { c'4 b c'8 e' g' e' | c'1 }
    \new NullVoice = "nv" {
      \autoBeamOff c4 r16 b,8. c8[ e8 g8 e8] | g8( f g4)~ g2 }
  >>
  \new Lyrics \lyricsto "nv" { free a -- lign -- ment }
>> }



% ****************************************************************
% end ly snippet
% ****************************************************************

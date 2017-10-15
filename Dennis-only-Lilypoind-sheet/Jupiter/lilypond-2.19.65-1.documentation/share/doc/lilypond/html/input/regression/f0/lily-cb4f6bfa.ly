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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/tuplet-properties.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "Tuplet bracket formatting supports numerous options,
for instance, bracketed (B) and non-bracketed (NB).
"
}

\context Voice \relative {

  \tuplet 3/2 { c'''8 c,, c }
  \tuplet 3/2 { c'8 c'' c,, }

  \tuplet 3/2 { c8[^"NB" c c] }

  \tuplet 3/2 { c8^"B"  c[ c] }
  \tuplet 4/2 { r8_"B"  c,[ c'] r8 }

  \override TupletBracket.bracket-visibility = #'if-no-beam  
  \tuplet 3/2 { c8[ c c] }

  \tupletUp
  \omit TupletNumber
  \tuplet 3/2 { c8^"up, no digit" c[ c] }
  \undo \omit TupletNumber

  \override TupletBracket.bracket-visibility = ##t
  \override TupletBracket.edge-height = #'(0 . 0)
  \override TupletBracket.shorten-pair = #'(2.0 . 2.0)
  \tuplet 6/4 { c_"shorter, no edges" f b  b f c}	
  \revert TupletBracket.edge-height
  \revert TupletBracket.shorten-pair

  \override TupletBracket.bracket-flare = #'(0.5 . 0.5)
  \tuplet 3/2 { b^"angled edges" b b }
  \tupletNeutral
  \tuplet 3/2 { b b b }
}



% ****************************************************************
% end ly snippet
% ****************************************************************

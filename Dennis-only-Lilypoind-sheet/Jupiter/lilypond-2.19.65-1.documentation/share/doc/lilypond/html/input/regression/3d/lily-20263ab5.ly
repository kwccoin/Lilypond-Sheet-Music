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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/font-postscript.ly"
\sourcefileline 0
\header {
  texidoc = "This file demonstrates how to load different (postscript)
fonts.  The file @file{font.scm} shows how to define the scheme-function
@code{make-default-fonts-tree}."
}

\version "2.16.0"

\paper {
  #(define text-font-defaults
    '((font-encoding . latin1)
      (baseline-skip . 2)
      (word-space . 0.6)))

  #(set! fonts (make-default-fonts-tree 1.0))
}

\layout {
  line-width = 160 \mm - 2.0 * 9.0 \mm

  indent = 0.0\mm
  ragged-right = ##t
}

{
  \key a \major
  \time 6/8
  cis''8.^"test!" d''16 cis''8 e''4 e''8
}



% ****************************************************************
% end ly snippet
% ****************************************************************

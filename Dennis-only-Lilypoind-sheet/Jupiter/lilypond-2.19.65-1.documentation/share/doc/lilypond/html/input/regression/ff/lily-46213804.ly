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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/context-mod-context.ly"
\sourcefileline 0
\version "2.19.21"

\header  {
texidoc = "Context modifications can be stored into a variable as a
\with object. They can be later inserted directly into a context definition."
}

% Some sample modifications to be inserted into a \with block later on
ctxmod = \with {
  \remove "Time_signature_engraver"
  \consists "Ambitus_engraver"
  \override StaffSymbol.line-count = 4
}

music = \relative { \key fis \minor c''1 d e }

\score { <<
    \new Staff { \music}
  >>
  \layout {
    \context { \Staff
      \ctxmod
      \override NoteHead.style = #'petrucci
    }
  }
}


\score { <<
    \new Staff { \music}
  >>
  \layout {
    \context { \Staff
      \override StaffSymbol.line-count = 3
      \override NoteHead.style = #'petrucci
    }
    % Should override the above definitions, but not reset others
    \context { \Staff
      \ctxmod
    }
  }
}




% ****************************************************************
% end ly snippet
% ****************************************************************

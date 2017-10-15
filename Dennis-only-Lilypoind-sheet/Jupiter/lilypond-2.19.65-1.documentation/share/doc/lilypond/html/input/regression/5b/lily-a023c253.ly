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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/automatic-polyphony-context-id.ly"
\sourcefileline 0
\version "2.19.22"

\header {
  texidoc = "The bottom-level contexts in polyphony shorthand are
allocated a context id in order of creation, starting with
@code{\"1\"}.
This snippet will fail to compile if either voice has an invalid
@code{context-id} string.
"
}

assertContextId =
#(define-music-function (id) (string?)
   (let ((music (make-music 'ApplyContext
                            'procedure
                            (lambda (ctx)
                              (and
                               (not (string=? (ly:context-id ctx) id))
                               (ly:error "context-id mismatch found: expecting ~s, got ~s"
                                         id
                                         (ly:context-id ctx)))))))
     music))

\relative c'' {
  <<
    {
      \assertContextId "1"
      c4 d e2
    }
    \\
    {
      \assertContextId "2"
      a,4 b c2
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************

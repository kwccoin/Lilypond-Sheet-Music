%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,fragment,indent=0\mm,line-width=160\mm,notime]
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
  
 \context {
   \Score
   timing = ##f
 }
 \context {
   \Staff
   \remove "Time_signature_engraver"
 }
}




{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 1138
  \override Staff.StaffSymbol.line-count = #4
  \override Staff.StaffSymbol.color = #red
  \override Staff.LedgerLineSpanner.color = #red
  \hide Voice.Stem
  \override NoteHead.style = #'medicaea.punctum
  \clef "medicaea-fa2"
  c'



% ****************************************************************
% end ly snippet
% ****************************************************************
}

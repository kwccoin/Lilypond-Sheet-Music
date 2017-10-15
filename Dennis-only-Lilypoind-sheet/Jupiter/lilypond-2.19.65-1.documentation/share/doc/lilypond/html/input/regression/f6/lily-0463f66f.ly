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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/instrument-name-x-align.ly"
\sourcefileline 0
\header {

  texidoc = "Instrument names horizontal alignment is tweaked by
changing the @code{Staff.Instrument #'self-alignment-X} property.  The
@code{\\layout} variables @code{indent} and @code{short-indent} define
the space where the instrument names are aligned before the first and
the following systems, respectively."

}

\version "2.17.6"
\paper { left-margin = 3\cm }
\score {
  \new StaffGroup <<
    \new Staff {
      \override Staff.InstrumentName.self-alignment-X = #LEFT
      \set Staff . instrumentName = \markup \left-column {
	"Left aligned" "instrument name"
      }
      \set Staff . shortInstrumentName = "Left"
      c''1 \break c''
    }
    \new Staff {
      \override Staff.InstrumentName.self-alignment-X = #CENTER
      \set Staff . instrumentName = \markup \center-column {
	"Centered" "instrument name"
      }
      \set Staff . shortInstrumentName = "Centered"
      g'1 g'
    }
    \new Staff {
      \override Staff.InstrumentName.self-alignment-X = #RIGHT
      \set Staff . instrumentName = \markup \right-column {
	"Right aligned" "instrument name"
      }
      \set Staff . shortInstrumentName = "Right"
      e' \break e'
    }
  >>
  \layout {
    ragged-right = ##t
    indent = 4\cm
    short-indent = 2\cm
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************

\version "2.14.2"
\include "deutsch.ly"
\include "../../snippets/merge-rests.ily"
  
#(set-global-staff-size 19)

\header {
  title = "Trio-Sonate Nr. 1"
  subtitle = "in F-Dur"
  composer = "Johann Christoph Pepusch"
  arranger = "(1667-1752)"
  enteredby = "cellist (2012-05-02)"
}

voiceconsts = {
  \key f \major
  \clef "treble"
% \numericTimeSignature
  \compressFullBarRests
}

introa = { \tempo "1. Largo " 4=70 \time 3/4 }
introb = { \break \tempo "2. Adagio " 4=60 \time 3/4 }
introc = { \break \tempo "3. Allegro " 8=200 \time 3/8 }

%minstr = "harpsichord"
mihi = "clarinet"
%minstr = "accordion"
milo = "bassoon"

aii = \markup \italic "à 2"

\include "v1.ily"
\include "v2.ily"
\include "v3.ily"
\include "v4.ily"
\include "v5.ily"

music = \new StaffGroup <<
      \new Staff {
	\set Staff.midiInstrument = \mihi
	\set Staff.instrumentName = #"Vl I"
	\transpose f f { \va }
      }

      \new Staff {
	\set Staff.midiInstrument = \mihi
	\set Staff.instrumentName = #"Vl II"
	\transpose f f { \vb }
      }

      \new PianoStaff <<
	\set PianoStaff.instrumentName = #"Pno"
	\new Staff {
	  \set Staff.midiInstrument = \mihi
	  <<
             \transpose f f {
	       \mergeRestsOn %% in one of the voices if sufficient
	       \vc
	     }
	  \\
	     \transpose f f { \vd }
	  >>
	}

	\new Staff {
	  \set Staff.midiInstrument = \milo
	  \transpose f f { \ve }
	}
    >>
>>

\book {
  \score {
    \music
    \layout {}
  }

  \score {
    \unfoldRepeats \music

    \midi {
      \context {
        \Score
      }
    }
  }
}

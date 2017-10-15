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
\sourcefilename "how-to-print-two-rehearsal-marks-above-and-below-the-same-barline-method-2.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.18.0"

\header {
%% Translation of GIT committish: 8ffecf6be17c6ec2ff87cf31873121a8cce29b09
  texidoces = "
Este método imprime dos 'letras de ensayo': una sobre el pentagrama y
otra debajo, creando dos voces, añadiendo el grabador Rehearsal Mark a
cada unad e las voces (sin esto no se imprime ninguna marca de ensayo)
y después poniendo cada marca de ensayo en las posiciones UP y DOWN en
cada voz respectivamente.

Este método (a diferencia del método 1) es más complejo, pero permite
más flexibilidad y sería necesario para trucar cada letra de ensayo
independientemente de las demás.

"
  doctitlees = "Cömo imprimir dos letras de ensayo encima y debajo de la misma línea divisoria (método 2)"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Cette méthode permet d'imprimer deux marques-repères -- l'une
au-dessus de la portée et l'autre en dessous -- à l'aide de deux
voix séparées.  Le graveur de repères est ensuite déplacé dans
chacune des voix, sans quoi aucun repère ne sera imprimé.  Enfin,
chaque voix se voit attribuer un positionnement pour les repères.

Cette méthode, bien que plus complexe que la première, apporte plus de
flexibilité dans l'ajustement individuel des deux composants du repère.

"
  doctitlefr = "Impression d'un double repère sur une même barre (méthode 2)"

  lsrtags = "editorial-annotations, expressive-marks, staff-notation, tweaks-and-overrides"

  texidoc = "
This method prints two 'rehearsal marks' - one above the stave and one
below, by creating two voices, adding the Rehearsal Mark engraver to
each voice - without this no rehearsal mark is printed - and then
placing each rehearsal mark UP and DOWN in each voice respectively.

This method (as opposed to method 1) is more complex, but allows for
more flexibility, should it be needed to tweak each rehearsal mark
independently of the other.

"
  doctitle = "How to print two rehearsal marks above and below the same barline (method 2)"
} % begin verbatim

\score {
  \relative c'
  <<
    \new Staff {
      <<
        \new Voice \with {
          \consists Mark_engraver
          \consists "Staff_collecting_engraver"
        }
        { c4 d e f
          \mark \markup { \box A }
          c4 d e f
        }
        \new Voice \with {
          \consists Mark_engraver
          \consists "Staff_collecting_engraver"
          \override RehearsalMark.direction = #DOWN
        }
        { s4 s s s
          \mark \markup { \circle 1 }
          s4 s s s
        }
      >>
    }
  >>
  \layout {
    \context {
      \Score
      \remove "Mark_engraver"
      \remove "Staff_collecting_engraver"
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************

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
\sourcefilename "moving-slur-positions-vertically.ly"
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
Se puede ajustar la posición vertical de una ligadura de
expresión utilizando la propiedad @code{positions} del objeto
@code{Slur}.  La propiedad tiene dos parámetros, refiriéndose el
primero al extremo izquierdo de la ligadura y el segundo al derecho.
Los valores de los parámetros no se utilizan por parte de LilyPond
para producir un desplazamiento exacto de la ligadura: más bien
selecciona la colocación que mejor aspecto tiene, teniendo en cuenta
los valores de los parámetros.  Los valores positivos desplazan la
ligadura hacia arriba, y son adecuados a notas que tienen las plicas
hacia abajo.  Los valores negativos desplazan las ligaduras bajas aún
más hacia abajo.

"
  doctitlees = "Desplazar ligaduras de expresión verticalmente"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Le positionnement vertical d'une liaison se contrôle par la propriété
@code{positions} de l'objet @code{Slur}.  Cette propriété dispose de
deux paramètres : le premier affecte l'extrémité gauche de la
liaison, le second son extrémité droite.  La valeur des paramètres
n'aura aucune influence sur le galbe de la liaison.  LilyPond ne
s'en servira que pour adapter le positionnement de la courbe.  Des
valeurs positives décalent la liaison vers le haut et s'utilisent
pour des hampes descendantes.  Des valeurs négatives entraînent un
décalage vers le bas.

"
  doctitlefr = "Déplacement vertical des liaisons d'articulation"

  lsrtags = "expressive-marks, tweaks-and-overrides"

  texidoc = "
The vertical position of a slur can be adjusted using the
@code{positions} property of @code{Slur}.  The property has 2
parameters, the first referring to the left end of the slur and the
second to the right.  The values of the parameters are not used by
LilyPond to make an exact movement of the slur - instead it selects
what placement of the slur looks best, taking into account the
parameter values.  Positive values move the slur up, and are
appropriate for notes with stems down.  Negative values move downward
slurs further down.

"
  doctitle = "Moving slur positions vertically"
} % begin verbatim

\relative c' {
  \stemDown
  e4( a)
  \override Slur.positions = #'(1 . 1)
  e4( a)
  \override Slur.positions = #'(2 . 2)
  e4( a)
  \override Slur.positions = #'(3 . 3)
  e4( a)
  \override Slur.positions = #'(4 . 4)
  e4( a)
  \override Slur.positions = #'(5 . 5)
  e4( a)
  \override Slur.positions = #'(0 . 5)
  e4( a)
  \override Slur.positions = #'(5 . 0)
  e4( a)
  \stemUp
  \override Slur.positions = #'(-5 . -5)
  e4( a)
  \stemDown
  \revert Slur.positions
  e4( a)
}



% ****************************************************************
% end ly snippet
% ****************************************************************

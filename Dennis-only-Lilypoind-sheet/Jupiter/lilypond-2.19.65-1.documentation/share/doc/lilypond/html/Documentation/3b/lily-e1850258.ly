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
\sourcefilename "moving-dotted-notes-in-polyphony.ly"
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
Cuando se puede una nota en la voz superior para evitar la colisión
con una nota de otra voz, el comportamiento predeterminado es
desplazar la nota superior a la derecha.  Se puede cambiar usando la
propiedad @code{prefer-dotted-right} de @code{NoteCollision}.

"
  doctitlees = "Desplazar las notas con puntillo en polifonía"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Une note pointée appartenant à la voix supérieure d'une portée
polyphonique sera par défaut décalée vers la droite afin d'éviter les
collisions avec les autres voix.  Ce comportement peut être outrepassé à
l'aide de la propriété @code{prefer-dotted-right} de
@code{NoteCollision}.

"
  doctitlefr = "Déplacement des notes pointées dans une polyphonie"

  lsrtags = "rhythms, simultaneous-notes, tweaks-and-overrides"

  texidoc = "
When a dotted note in the upper voice is moved to avoid a collision
with a note in another voice, the default is to move the upper note to
the right.  This behaviour can be over-ridden by using the
@code{prefer-dotted-right} property of @code{NoteCollision}.

"
  doctitle = "Moving dotted notes in polyphony"
} % begin verbatim

\new Staff \relative c' <<
  {
    f2. f4
    \override Staff.NoteCollision.prefer-dotted-right = ##f
    f2. f4
    \override Staff.NoteCollision.prefer-dotted-right = ##t
    f2. f4
  }
  \\
  { e4 e e e e e e e e e e e }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************

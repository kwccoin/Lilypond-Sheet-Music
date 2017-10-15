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
\sourcefilename "creating-slurs-across-voices.ly"
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
En determinadas situaciones es necesario crear ligaduras de
expresión entre notas que están en voces distintas.

La solución es añadir notas invisibles a una de las voces
utilizando @code{\\hideNotes}.

Este ejemplo es el compás 235 de la Chacona de la segunda Partita
para violín solo, BWV 1004, de Bach.

"
  doctitlees = "Hacer ligaduras entre voces distintas"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Dans certaines situations, il peut être nécessaire de lier des notes
appartenant à des voix différentes.

La solution consiste à ajouter une note invisible dans l'une des voix, à
l'aide de la commande @code{\\hideNotes}.

Voici par exemple la mesure 235 de la chaconne de la seconde partita
pour violon solo, BWV 1004, de Bach.

"
  doctitlefr = "Création d'une liaison entre plusieurs voix"

  lsrtags = "connecting-notes, expressive-marks, keyboards, real-music, unfretted-strings"

  texidoc = "
In some situations, it may be necessary to create slurs between notes
from different voices.

The solution is to add invisible notes to one of the voices, using
@code{\\hideNotes}.

This example is measure 235 of the Ciaconna from Bach's 2nd Partita for
solo violin, BWV 1004.

"
  doctitle = "Creating slurs across voices"
} % begin verbatim

\relative c' {
  <<
    {
      d16( a') s a s a[ s a] s a[ s a]
    }
    \\
    {
      \slurUp
      bes,16[ s e](
      \hideNotes a)
      \unHideNotes f[(
      \hideNotes a)
      \unHideNotes fis](
      \hideNotes a)
      \unHideNotes g[(
      \hideNotes a)
      \unHideNotes gis](
      \hideNotes a)
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************

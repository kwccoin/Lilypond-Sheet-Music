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
\sourcefilename "engraving-ties-manually.ly"
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
  doctitlees = "Grabado manual de las ligaduras"
  texidoces = "
Se pueden grabar a mano las ligaduras modificando la propiedad
@code{tie-configuration} del objeto @code{TieColumn}. El primer número
indica la distancia a partir de la tercera línea del pentagrama en
espacios de pentagrama, y el segundo número indica la dirección (1 =
hacia arriba, -1 = hacia abajo).

"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Le legature di valore possono essere disegnate a mano cambiando la
proprietà @code{tie-configuration} dell'oggetto @code{TieColumn}. Il
primo numero indica la distanza dal centro del rigo nell'unità di
metà spazio rigo, mentre il secondo numero indica la
direzione (1 = su, -1 = giù).

"
  doctitleit = "Disegnare manualmente le legature di valore"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
texidocde = "
Überbindungen können manuell gesetzt werden, indem man die
@code{tie-configuration}-Eigenschaft des @code{TieColumn}-Objekts
beeinflusst.  Die erste Zahl zeigt den Abstand von der Mitte in
Notensystemabständen an, die zweite Zahl zeigt die Richtung an (1 = nach oben,
-1 = nach unten).

"
  doctitlede = "Bindebögen manuell setzen"



%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Il est possible de graver manuellement les liaisons de tenue, en
modifiant la propriété @code{tie-configuration}.  Pour chaque paire, le
premier nombre indique la distance à la portée, en espaces de portée, et
le second la direction (1 pour haut, @minus{}1 pour bas).

"
  doctitlefr = "Dessin à main levée de liaisons de tenue"

  lsrtags = "rhythms"

  texidoc = "
Ties may be engraved manually by changing the @code{tie-configuration}
property of the @code{TieColumn} object. The first number indicates the
distance from the center of the staff in half staff-spaces, and the
second number indicates the direction (1 = up, -1 = down).

"
  doctitle = "Engraving ties manually"
} % begin verbatim

\relative c' {
  <c e g>2~ <c e g>
  \override TieColumn.tie-configuration =
    #'((0.0 . 1) (-2.0 . 1) (-4.0 . 1))
  <c e g>2~ <c e g>
}



% ****************************************************************
% end ly snippet
% ****************************************************************

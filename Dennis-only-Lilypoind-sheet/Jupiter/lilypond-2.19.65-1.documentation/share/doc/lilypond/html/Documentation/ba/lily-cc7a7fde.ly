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
\sourcefilename "changing-text-and-spanner-styles-for-text-dynamics.ly"
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
Se puede modificar el texto empleado para los crescendos y
decrescendos modificando las propiedades de contexto
@code{crescendoText} y @code{decrescendoText}.

El estilo de la línea de extensión se puede cambiar modificando la
propiedad @code{'style} de @code{DynamicTextSpanner}.  El valor
predeterminado es @code{'dashed-line} (línea discontinua), y entre
otros valores posibles se encuentran @code{'line} (línea),
@code{'dotted-line} (línea de puntos) y @code{'none} (nada):

"
  doctitlees = "Cambiar el texto y los estilos de objeto de extensión para las indicaciones dinámicas textuales"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Il testo usato per i crescendo e i decrescendo può essere cambiato
modificando le proprietà di contesto @code{crescendoText} e
@code{decrescendoText}.

Lo stile della linea dell'estensore può essere cambiato modificando la
proprietà @code{'style} di @code{DynamicTextSpanner}.  Il valore predefinito
è @code{'dashed-line}; gli altri valori possibili sono @code{'line},
@code{'dotted-line} e @code{'none}.

"
  doctitleit = "Nascondere la linea di estensione per le dinamiche testuali"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
texidocde = "
Der Text, der für Crescendo und Decrescendo gesetzt wird, kann geändert
werden, indem man die Eigenschaften @code{crescendoText} und
@code{decrescendoText} verändert.  Der Stil des Streckers kann auch
geändert werden, indem die @code{'style}-Eigenschaft des
@code{DynamicTextSpanner} beeinflusst wird.  Der Standardwert ist
@code{'hairpin}, andere Möglichkeiten sind @code{'line}, @code{'dashed-line}
und @code{'dotted-line}.
"
  doctitlede = "Text und Strecker-Stile für Dynamik-Texte ändern"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Le texte par défaut des crescendos et decrescendos se change en
modifiant les propriétés de contexte @code{crescendoText} et
@code{decrescendoText}.  L'aspect de la ligne d'extension est fonction
de la propriété @code{style} du @code{DynamicTextSpanner}.  Sa valeur
par défaut est @code{'hairpin}, mais d'autres valeurs sont disponibles,
comme @code{'line}, @code{'dashed-line} et @code{'dotted-line}.

"
  doctitlefr = "Modifidation du texte et de l'extension de nuances textuelles"

  lsrtags = "expressive-marks, tweaks-and-overrides"

  texidoc = "
The text used for crescendos and decrescendos can be changed by
modifying the context properties @code{crescendoText} and
@code{decrescendoText}.

The style of the spanner line can be changed by modifying the
@code{'style} property of @code{DynamicTextSpanner}.  The default value
is @code{'dashed-line}, and other possible values include @code{'line},
@code{'dotted-line} and @code{'none}.

"
  doctitle = "Changing text and spanner styles for text dynamics"
} % begin verbatim

\relative c'' {
  \set crescendoText = \markup { \italic { cresc. poco } }
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner.style = #'dotted-line
  a2\< a
  a2 a
  a2 a
  a2 a\mf
}



% ****************************************************************
% end ly snippet
% ****************************************************************

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
\sourcefilename "creating-blank-staves.ly"
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
Para crear pentagramas en blanco, genere compases vacíos y después
elimine el grabador de números de compás @code{Bar_number_engraver}
del contexto @code{Score}, y los grabadores de la indicación de compás
@code{Time_signature_engraver}, de la clave @code{Clef_engraver} y de
los compases @code{Bar_engraver} del contexto de @code{Staff}.

"
  doctitlees = "Crear pentagramas en blanco"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Rien n'est plus simple, pour obtenir une feuille blanche avec des
portées, que de générer des mesures vides, de supprimer le
@code{Bar_number_engraver} du contexte @code{Score}, et les
@code{Time_signature_engraver}, @code{Clef_engraver} et
@code{Bar_engraver} du contexte @code{Staff}.

"
  doctitlefr = "Impression de papier à musique"

  lsrtags = "contexts-and-engravers, editorial-annotations, paper-and-layout, specific-notation, staff-notation"

  texidoc = "
To create blank staves, generate empty measures then remove the
@code{Bar_number_engraver} from the @code{Score} context, and the
@code{Time_signature_engraver}, @code{Clef_engraver} and
@code{Bar_engraver} from the @code{Staff} context.

"
  doctitle = "Creating blank staves"
} % begin verbatim

#(set-global-staff-size 20)

\score {
  {
    \repeat unfold 12 { s1 \break }
  }
  \layout {
    indent = 0\in
    \context {
      \Staff
      \remove "Time_signature_engraver"
      \remove "Clef_engraver"
      \remove "Bar_engraver"
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}

% uncomment these lines for "letter" size
%{
\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  line-width = 7.5\in
  left-margin = 0.5\in
  bottom-margin = 0.25\in
  top-margin = 0.25\in
}
%}

% uncomment these lines for "A4" size
%{
\paper {
  #(set-paper-size "a4")
  ragged-last-bottom = ##f
  line-width = 180
  left-margin = 15
  bottom-margin = 10
  top-margin = 10
}
%}



% ****************************************************************
% end ly snippet
% ****************************************************************

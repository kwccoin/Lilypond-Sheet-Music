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
\sourcefilename "adding-timing-marks-to-long-glissandi.ly"
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
Los pulsos que se saltan en glissandos muy largos se indican a veces
mediante marcas de tiempo, que a menudo consisten en figuras sin
cabeza.  Estas plicas se pueden usar también para albergar
indicaciones expresivas intermedias.

Si las plicas no quedan bien alineadas con el glissando, podría ser
necesario recolocarlas ligeramente.
"
  doctitlees = "Añadir marcas de tiempo a glissandos largos"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
I battiti saltati nei glissandi molto lunghi vengono talvolta segnalati
con delle indicazioni di tempo, che consistono solitamente in dei gambi
privi di teste di nota.  Questi gambi possono essere usati anche per
contenere segni di espressione intermedi.

Se i gambi non si allineano bene al glissando, può essere necessario
riposizionarli leggermente.

"
  doctitleit = "Aggiungere i segni di tempo per i glissandi lunghi"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Lorsqu'un glissando s'étend dans la durée, on trouve parfois des
indications temporelles, matérialisées par des hampes sans tête de note.
De telles hampes permettent aussi d'indiquer des éléments
intermédiaires.

L'alignement des hampes avec la ligne de glissando peut requérir
quelques aménagements.

"
  doctitlefr = "Ajout de marques temporelles à un long glissando"

  lsrtags = "expressive-marks, staff-notation, tweaks-and-overrides"

  texidoc = "
Skipped beats in very long glissandi are sometimes indicated by timing
marks, often consisting of stems without noteheads.  Such stems can
also be used to carry intermediate expression markings.

If the stems do not align well with the glissando, they may need to be
repositioned slightly.

"
  doctitle = "Adding timing marks to long glissandi"
} % begin verbatim

glissandoSkipOn = {
  \override NoteColumn.glissando-skip = ##t
  \hide NoteHead
  \override NoteHead.no-ledgers = ##t
}

glissandoSkipOff = {
  \revert NoteColumn.glissando-skip
  \undo \hide NoteHead
  \revert NoteHead.no-ledgers
}

\relative c'' {
  r8 f8\glissando
  \glissandoSkipOn
  f4 g a a8\noBeam
  \glissandoSkipOff
  a8

  r8 f8\glissando
  \glissandoSkipOn
  g4 a8
  \glissandoSkipOff
  a8 |

  r4 f\glissando \<
  \glissandoSkipOn
  a4\f \>
  \glissandoSkipOff
  b8\! r |
}



% ****************************************************************
% end ly snippet
% ****************************************************************

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
\sourcefilename "shortening-volta-brackets.ly"
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
De forma predeterminada, los corchetes de primera y segunda vez se
trazan encima de los finales alternativos completos, pero es posible
acortartlos estableciendo un valor cierto para
@code{voltaSpannerDuration}.  En el ejemplo siguiente, el corchete
sólo dura un compás, que corresponde a una duración de 3/4.

"
  doctitlees = "Acortar los corchetes de primera y segunda vez"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Per impostazione predefinita, le parentesi delle volte si estendono per
tutta l'alternativa, ma si possono accorciare impostando
@code{voltaSpannerDuration}.  Nell'esempio seguente, la parentesi dura
una misura, che ha una durata di 3/4.

"
  doctitleit = "Accorciare le parentesi delle volte"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Volta-Klammern werden normalerweise über alle Noten der Klammer gezogen, aber
es ist möglich sie zu verkürzen.  Hierzu muss
@code{voltaSpannerDuration} definiert werden, in dem Beispiel etwa als
3/4, sodass die Klammer nur einen Takt dauert.

"
  doctitlede = "Volta-Klammern verkürzen"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Les crochets indiquant les fins alternatives s'étalent tout au long de
celles-ci.  On peut les raccourcir en jouant sur la propriété
@code{voltaSpannerDuration}.  Dans l'exemple suivant, le crochet ne se
prolonge que sur une mesure à 3/4.

"
  doctitlefr = "Diminution de la taille du crochet d'alternative"

  lsrtags = "repeats"

  texidoc = "
By default, the volta brackets will be drawn over all of the
alternative music, but it is possible to shorten them by setting
@code{voltaSpannerDuration}.  In the next example, the bracket only
lasts one measure, which is a duration of 3/4.

"
  doctitle = "Shortening volta brackets"
} % begin verbatim

\relative c'' {
  \time 3/4
  c4 c c
  \set Score.voltaSpannerDuration = #(ly:make-moment 3/4)
  \repeat volta 5 { d4 d d }
  \alternative {
    {
      e4 e e
      f4 f f
    }
    { g4 g g }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************

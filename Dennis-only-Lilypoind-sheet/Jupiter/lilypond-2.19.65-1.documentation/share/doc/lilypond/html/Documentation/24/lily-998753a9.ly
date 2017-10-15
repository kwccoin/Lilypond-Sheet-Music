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
\sourcefilename "single-staff-template-with-notes,-lyrics,-and-chords.ly"
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
Esta plantilla facilita la preparación de una canción con melodía,
letra y acordes.

"
  doctitlees = "Plantilla de pentagrama único con música, letra y acordes"

%% Translation of GIT committish: fabcd22c8f88ea9a87241597f1e48c0a9adbfc6e
  texidocja = "
これは旋律、歌詞、コードを持つ歌曲の楽譜のためのテンプレートです。
"
  doctitleja = "音符、歌詞、コードを持つ単一譜のテンプレート"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Ecco il modello di un comune spartito semplificato (lead sheet): include
linea melodica, testo vocale e sigle degli accordi.

"
  doctitleit = "Modello di rigo singolo con note, testo, accordi e tasti"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Mit diesem Beispiel können Sie einen Song mit Melodie,
Text und Akkorden schreiben.
"

  doctitlede = "Vorlage für eine Notenzeile mit Noten, Text und Akkorden"


%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Ce canevas comporte tous les éléments d'une chanson : la mélodie,
les paroles, les accords.

"
  doctitlefr = "Paroles, musique et accords"

  lsrtags = "chords, really-simple, template, vocal-music"

  texidoc = "
This template allows the preparation of a song with melody, words, and
chords.

"
  doctitle = "Single staff template with notes lyrics and chords"
} % begin verbatim

melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  a4 b c d
}

text = \lyricmode {
  Aaa Bee Cee Dee
}

harmonies = \chordmode {
  a2 c
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \autoBeamOff \melody }
    \new Lyrics \lyricsto "one" \text
  >>
  \layout { }
  \midi { }
}



% ****************************************************************
% end ly snippet
% ****************************************************************

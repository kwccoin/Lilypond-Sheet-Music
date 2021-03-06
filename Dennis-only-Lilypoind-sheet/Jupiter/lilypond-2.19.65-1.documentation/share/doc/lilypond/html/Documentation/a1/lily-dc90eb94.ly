%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote]
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
  line-width = 160\mm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "hammer-on-and-pull-off-using-chords.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.18.0"

\header {
%% Translation of GIT committish: c5f6541667b71037c4965b482a8161628c7cc485
  texidocfr = "
Dans le cadre de notes en accord, les @emph{hammer-on} et
@emph{pull-off} sont indiqués par un arc simple.  Vous obtiendrez
néanmoins un arc double en réglant la propriété @code{doubleSlurs} sur
@code{#t}.

"
  doctitlefr = "Hammer on et pull off avec accords"

  lsrtags = "editorial-annotations, fretted-strings"

  texidoc = "
When using hammer-on or pull-off with chorded notes, only a single arc
is drawn. However @qq{double arcs} are possible by setting the
@code{doubleSlurs} property to @code{#t}.

"
  doctitle = "Hammer on and pull off using chords"
} % begin verbatim

\new TabStaff {
  \relative c' {
    % chord hammer-on and pull-off
    \set doubleSlurs = ##t
    <g' b>8( <a c> <g b>)
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************

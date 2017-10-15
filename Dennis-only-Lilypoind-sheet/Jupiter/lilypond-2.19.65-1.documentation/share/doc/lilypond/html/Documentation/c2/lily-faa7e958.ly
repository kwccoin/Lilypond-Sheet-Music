%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote,ragged-right]
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
  ragged-right = ##t
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "subdividing-beams.ly"
\sourcefileline 0
% DO NOT EDIT this file manually; it is automatically
% generated from Documentation/snippets/new
% Make any changes in Documentation/snippets/new/
% and then run scripts/auxiliar/makelsr.py
%
% This file is in the public domain.
%% Note: this file works from version 2.19.40
\version "2.19.40"

\header {
%% Translation of GIT committish: f91c9533a7217e9d19eccc3c192ea9222efdbfc4
  texidoces = "
Las barras de semicorchea, o de figuras más breves, no se subdividen
de forma predeterminada.  Esto es, las tres (o más) barras se amplían
sin romperse sobre grupos completos de notas.  Este comportamiento se
puede modificar para subdividir las barras en subgrupos mediante el
establecimiento de la propiedad @code{subdivideBeams}.  Cuando está
activada, las barras se subdividen a intervalos definidos por el valor
actual de @code{baseMoment} mediante la reducción de las barras
repetidas a una sola entre los subgrupos.  Observe que el valor
predeterminado de @code{baseMoment} es uno más que el denominador del
tipo de compás actual, si no se fija explícitamente.  Se debe ajustar
a una fracción que da la duración del subgrupo de barras utilizando la
función @code{ly:make-moment}, como se ve en este fragmento de código.
Asimismo, cuando se modifica @code{baseMoment}, se debería cambiar
también @code{beatStructure} para que corresponda al @code{baseMoment}
nuevo:

"
  doctitlees = "Subdivisión de barras"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Le travature di note consecutive di un sedicesimo (o più brevi) non
vengono suddivise, ovvero i tre (o più) tratti della travatura si
estendono, senza spezzarsi, sugli interi gruppi di note.
Questo comportamento può essere modificato in modo da suddividere le
travature in sottogruppi attraverso la proprietà
@code{subdivideBeams}. Se impostata, le travature che comprendono più
sottogruppi verranno suddivise a intervalli definiti dal
valore attuale di @code{baseMoment}, riducendo le travature multiple
al numero di travature che indica il valore metrico della suddivisione.
Se il gruppo successivo alla suddivisione è più breve del valore
metrico corrente (di solito perché la travatura è incompleta), il
numero di travature riflette il gruppo di suddivisione più lungo
possibile.  Tuttavia, se rimane una sola nota dopo la divisione, questa
restrizione non viene applicata.
Si noti che @code{baseMoment}, se non impostata
esplicitamente, equivale a uno fratto il denominatore dell'attuale
indicazione di tempo.  Deve quindi essere impostata su una frazione
che stabilisca la durata del sottogruppo di travature; lo si può fare
usando la funzione @code{ly:make-moment}, come è mostrato in questo
frammento di codice.  Inoltre quando @code{baseMoment} cambia, anche
@code{beatStructure} deve essere modificato per accordarsi con
@code{baseMoment}:

"
  doctitleit = "Suddividere le travature"

%% Translation of GIT committish: 12a06e5c29a2f58081068ac7663f0d6a6d4bdf95
  texidocfr = "
Les ligatures d'une succession de notes de durée inférieure à la croche
ne sont pas subdivisées par défaut.  Autrement dit, tous les traits de
ligature (deux ou plus) seront continus.  Ce comportement peut être
modifié afin de diviser la ligature en sous-groupes grâce à la propriété
@code{subdivideBeams}.  Lorsqu'elle est activée, les ligatures seront
subdivisées selon un intervalle défini par @code{baseMoment} ; il n'y
aura alors plus que le nombre de traits de ligature déterminé entre
chaque sous-groupe.  Si le groupe qui suit la division est plus court que
la valeur pour la métrique en cours -- généralement lorsque la ligature
est incomplète --, le nombre de traits de ligature correspond au
regroupement de la bubdivision la plus longue.  Cette restriction ne
sera toutefois pas appliquée dans le cas où ne rest qu'une note après la
division.  Par défaut, @code{baseMoment} fixe la valeur de référence par
rapport à la métrique en vigueur.  Il faudra donc lui fournir, à l'aide
de la fonction @code{ly:make-moment}, une fraction correspondant à la
durée du sous-groupe désiré comme dans l'exemple ci-dessous.  Gardez à
l'esprit que, si vous venez à modifier @code{baseMoment}, vous devrez
probablement adapter @code{beatStrusture} afin qu'il reste en adéquation
avec les nouvelles valeurs de @code{baseMoment}.

"
  doctitlefr = "Subdivision des ligatures"

  lsrtags = "rhythms"

  texidoc = "
The beams of consecutive 16th (or shorter) notes are, by default, not
subdivided.  That is, the three (or more) beams stretch unbroken over
entire groups of notes.  This behavior can be modified to subdivide the
beams into sub-groups by setting the property @code{subdivideBeams}.
When set, multiple beams will be subdivided at intervals defined by the
current value of @code{baseMoment} by reducing the multiple beams to
the number of beams that indicates the metric value of the subdivision.
If the group following the division is shorter than the current metric
value (usually because the beam is incomplete) the number of beams
reflects the longest possible subdivision group.  However, if there is
only one note left after the division this restriction isn't applied.
Note that @code{baseMoment} defaults to one over the denominator of the
current time signature if not set explicitly. It must be set to a
fraction giving the duration of the beam sub-group using the
@code{ly:make-moment} function, as shown in this snippet. Also, when
@code{baseMoment} is changed, @code{beatStructure} should also be
changed to match the new @code{baseMoment}:

"
  doctitle = "Subdividing beams"
} % begin verbatim


\relative c'' {
  c32[ c c c c c c c]
  \set subdivideBeams = ##t
  c32[ c c c c c c c]

  % Set beam sub-group length to an eighth note
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = 2,2,2,2
  c32[ c c c c c c c]

  % Set beam sub-group length to a sixteenth note
  \set baseMoment = #(ly:make-moment 1/16)
  \set beatStructure = 4,4,4,4
  c32[ c c c c c c c]

  % Shorten beam by 1/32
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = 2,2,2,2
  c32[ c c c c c c] r32

  % Shorten beam by 3/32
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = 2,2,2,2
  c32[ c c c c] r16.
  r2
}



% ****************************************************************
% end ly snippet
% ****************************************************************

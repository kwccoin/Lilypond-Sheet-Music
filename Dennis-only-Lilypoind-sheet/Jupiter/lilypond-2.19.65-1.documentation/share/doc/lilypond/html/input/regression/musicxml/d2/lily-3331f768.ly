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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/musicxml/23c-Tuplet-Display-NonStandard.xml"
\sourcefileline 0
\version "2.19.65"
% automatically converted by musicxml2ly from -
\pointAndClickOff

\header {
    texidoc = 
    "Displaying tuplet note types,
          that might not coincide with the displayed note. The first two tuplets 
          take the type from the note, the second two from the 
          <time-modification> element, the remaining pair of tuplets from the 
          <tuplet> notation element. The tuplets in measure 3 specify both 
          a number of notes and a type inside the <tuplet-actual> and 
          <tuplet-normal> elements, the ones in measure 4 specify only a 
          note type (but no number), and the ones in measure 5 specify only a 
          number of tuplet-notes (but no type, which is deduced from the 
          note's type). The first tuplet of measures 3-5 uses 
          'display-type=\"
    actual\"', the second one 'display-type=\"both\"'. FIXME: The
    tuplet-normal should coincide with the real notes!"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    \clef "treble" \key c \major \time 4/4 | % 1
    \once \override TupletNumber.text = #(tuplet-number::append-note-wrapper tuplet-number::calc-denominator-text "8")
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletNumber.text = #(tuplet-number::append-note-wrapper tuplet-number::calc-denominator-text "4.")
    \times 2/3  {
        c4. c4. c4. }
    | % 2
    \once \override TupletNumber.text = #(tuplet-number::append-note-wrapper tuplet-number::calc-denominator-text "breve")
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletNumber.text = #(tuplet-number::append-note-wrapper tuplet-number::calc-denominator-text "breve..")
    \times 2/3  {
        c4. c4. c4. }
    | % 3
    \once \override TupletNumber.text = #(tuplet-number::append-note-wrapper (tuplet-number::non-default-tuplet-fraction-text 7 5) "4...")
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletNumber.text = #(tuplet-number::non-default-fraction-with-notes 7 "16" 5 "2.")
    \times 2/3  {
        c4. c4. c4. }
    | % 4
    \once \override TupletNumber.text = #(tuplet-number::append-note-wrapper tuplet-number::calc-fraction-text "4...")
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletNumber.text = #(tuplet-number::fraction-with-notes "16" "2.")
    \times 2/3  {
        c4. c4. c4. }
    | % 5
    \once \override TupletNumber.text = #(tuplet-number::append-note-wrapper (tuplet-number::non-default-tuplet-denominator-text 7) "8")
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletNumber.text = #(tuplet-number::non-default-fraction-with-notes 7 "breve" 5 "8.")
    \times 2/3  {
        c4. c4. c4. }
    \bar "|."
    }


% The score definition
\score {
    <<
        
        \new Staff
        <<
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 100 }
    }




% ****************************************************************
% end ly snippet
% ****************************************************************

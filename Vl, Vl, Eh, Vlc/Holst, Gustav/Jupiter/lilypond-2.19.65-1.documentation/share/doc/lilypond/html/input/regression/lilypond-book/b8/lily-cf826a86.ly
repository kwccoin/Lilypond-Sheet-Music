%% Generated by lilypond-book.py
%% Options: [absolute,indent=0\mm,language=deutsch,no-beaming]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "include.mxl"
\sourcefileline 0
\version "2.19.65"
% automatically converted by musicxml2ly from -
\pointAndClickOff

%% additional definitions required by the score:
\language "deutsch"


\header {
    encodingsoftware =  "Hand-crafted MusicXML file (Kate on KDE)"
    texidoc = 
    "A compressed MusicXML file, 
              containing a simple MusicXML score and the corresponding .pdf 
              output for reference."
    copyright =  "Public Domain"
    title =  "Compressed MusicXML file"
    }

PartPOneVoiceOne =  {
    \clef "treble" \key a \major \time 2/2 | % 1
    cis'4 cis'4 cis'4 cis'4 }


% The score definition
\score {
    <<
        
        \new Staff
        <<
            \set Staff.instrumentName = "Voice"
            
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

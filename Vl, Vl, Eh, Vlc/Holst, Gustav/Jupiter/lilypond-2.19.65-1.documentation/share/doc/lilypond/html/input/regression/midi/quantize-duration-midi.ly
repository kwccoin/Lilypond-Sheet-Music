% Lily was here -- automatically converted by /home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/scripts/midi2ly.py from out-www/quantize-duration.midi
\version "2.14.0"

\layout {
  \context {
    \Voice
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  }
}

% included from ./out-www/quantize-duration.header
\header {
texidoc="@code{midi2ly}'s option @option{--duration-quant} quantizes durations of notes."
options="--duration-quant=4"
}
% end

trackAchannelA = {
  
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] GNU LilyPond 2.19.65          
  
  \time 4/4 
  
  \tempo 4 = 60 
  
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = "trackB:voiceA"
  
}

trackBchannelB = \relative c {
  \voiceOne
  r32 c4 
}

trackBchannelBvoiceB = \relative c {
  \voiceTwo
  r4 c 
}

trackB = <<

  \clef bass
  
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
  \context Voice = voiceC \trackBchannelBvoiceB
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
  >>
  \layout {}
  \midi {}
}

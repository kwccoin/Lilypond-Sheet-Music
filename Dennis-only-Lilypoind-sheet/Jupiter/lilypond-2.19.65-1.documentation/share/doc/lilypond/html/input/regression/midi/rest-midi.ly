% Lily was here -- automatically converted by /home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/scripts/midi2ly.py from out-www/rest.midi
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

% included from ./out-www/rest.header
\header {
texidoc="midi2ly identifies rests"
options=""
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
  r4 a r4 a 
  | % 2
  
}

trackB = <<

  \clef bass
  
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
  >>
  \layout {}
  \midi {}
}

% Lily was here -- automatically converted by /home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/scripts/midi2ly.py from out-www/lyrics-addlyrics.midi
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

% included from ./out-www/lyrics-addlyrics.header
\header {
texidoc="Lyrics are preserved"
options=""
}
% end

trackAchannelA = {


  \key g \major
    
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] GNU LilyPond 2.19.65          
  
  \time 6/8 
  
  \tempo 4 = 60 
  
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = ":uniqueContext0"
  
}

trackBchannelB = \relative c {
  d''4 b8 c4 a8 
  | % 2
  d4 b8 g4 
}

trackB = <<
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
>>


trackCchannelA = {
  

  \key g \major
  
}

trackC = <<
  \context Voice = voiceA \trackCchannelA
>>


trackDchannelA = \lyricmode {
  "Girls" "and"8 "boys"4 "come"8 
  | % 2
  "out"4 "to"8 "play,"4 
}

trackD = <<
  \context Lyrics = voiceA \trackDchannelA
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
    \context Lyrics=trackD \trackD
  >>
  \layout {}
  \midi {}
}

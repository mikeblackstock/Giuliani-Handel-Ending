
\paper {}
\header {
tagline= "Typeset with OMET (https://omet.ca) - Engraved with Lilypond (https://www.lilypond.org)"
}
 guitarUpper= \relative c{
	\voiceOne
	\clef "G_8"
	\time 2/4

	\key	a \major
	\time	2/4
    r16  a'  cis  e  dis  e  fis  e  |
	d  e  b  e  d  e  b  e  |
	cis  e  dis  e  a  gis  fis  e  |
	d  e  b  e  d  e  b  e  |
	r  cis  a'  cis,  r  cis  a'  cis,  |

 

	r16  b  a'  b,  r  b  gis'  b,  |
	r  a  cis  e  dis  e  fis  e  |
	d  e  b  e  d  e  b  e  |
	cis  e  dis  e  a  gis  fis  e  |
	d  e  b  e  d  e  b  e  |
	
 

	r16  cis  a'  cis,  r  cis  a'  cis,  |
	r  d  <b' fis > d,  r  e  <e' gis, > e,  |
	r  a  gis  fis  e  d  cis  b  |
	a  a  gis  fis  e  d  cis  b  |
	a8  r  <cis' a > r  <a e cis >2 |


}
guitarLower = \relative c {
	\voiceTwo

	a4  r  |
	r8  gis  e  gis  |
	a4  r  |
	r8  gis  e  gis  |
	a4  fis'  |
	
	d4  e,  |
	a  r  |
	r8  gis  e  gis  |
	a4  r  |
	r8  gis  e  gis  |
	
	a4  fis'  |
	d  e,  |
	a  r  |
	s1*2/4 |
	s8  r  a  r  a2  |
	

}
guitarStaff = \simultaneous {
	\context Voice="guitarUpper" \guitarUpper
	\context Voice="guitarLower" \guitarLower
}
\score {
\relative <<
	\context Staff = guitarStaff<<
	    \context Voice= guitarUpper \guitarUpper
	    \context Voice= guitarLower \guitarLower
    	>>
	>>
\midi{ 
    \context { 
    \Score 
    tempoWholesPerMinute = #(ly:make-moment 90 4) 
    } 
} 
\layout{  
    indent = 0 \cm 
    linewidth = 170.000 \mm
    textheight = 250.000 \mm
 }
}

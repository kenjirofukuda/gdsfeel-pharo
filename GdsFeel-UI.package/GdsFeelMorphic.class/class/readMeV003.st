documentation
readMeV003
	^'
Change button font example:
-----------------------------
GdsFeelMorphic controlCaptionFontSize: 18.
GdsFeelMorphic controlCaptionFontName: ''BitstreamVeraSansMono''


Evalute this:
-------------------
GdsStationUI open.


Restore original or Narrow screen:
-----------------------------
GdsFeelMorphic controlCaptionFontSize: 9.
GdsFeelMorphic controlCaptionFontName: ''Accumon''


This update clear class variables. if set goodiesEnabled:
-----------------------------
GdsFeelMorphic goodiesEnabled: true.


V003
--------
add class named: GdsFeelMorphic

and provides: 
- #controlCaptionFontSize 
- #controlCaptionFontSize: 
- #controlCaptionFontName 
- #controlCaptionFontName: 

move from GdsFeel classmethods:
- #goodiesEnabled
- #goodiesEnabled:
- #debugStretchFeedback 
- #debugStretchFeedback: 
- #debugFindElement 
- #debugFindElement: 
- #debugPathBoundary: 
- #clickSoundEnabled 
- #clickSoundEnabled: 
- #debugPathBoundary 
'

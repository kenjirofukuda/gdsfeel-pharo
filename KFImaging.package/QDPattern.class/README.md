QDPattern

Auther:			gdsfeel_doit@me.com
Description: 	QuickDraw pattern into Squeak environment.
Testing Environment: Squeak3.5 #5180

Please allow awkward English.
See: http://developer.apple.com/documentation/mac/QuickDraw/QuickDraw-177.html
if you needs display like as [Figure 3-28  Standard patterns]  of  that URL contents.
evalute next line
	 QDPattern example.

this implemetation dose not use primitive api call. original pattern data source from MPW (Macintosh Programers Workshop) Rez command source format. 
Then platform indipendent. 

Toolbox call:
	GetIndPattern(&pat, sysPatListID, patIndex);
Squeak call:
	pat := QDPattern formAt: patIndex.

using pattern:

	In MVC: 	(fill Form object using InfinitForm)
		
		| pat targetForm fillerForm kIconSize |
		...
		targetForm := Form extent: (kIconSize @ kIconSize).
		fillerForm := InfiniteForm with: (QDPattern formAt: patIndex).
		fillerForm displayOn: targetForm.
		...
		
	In Morphic:

		| tagetMorph fillStyle |
		...
		fillStyle := BitmapFillStyle fromForm: (QDPattern formAt: patIndex).
		fillStyle origin: tagetMorph bounds origin.
		tagetMorph fillStyle: fillStyle.
		...

pattern access by name (constant):
	Toolbox call:
		qdGlobals.gray, qdGlobals.ltGray, qdGlobals.dkGray ..
	Squeak call:
		QDPattern gray, QDPattren lightGray , QDPattren darkGray ...	

A future view:
	1. pattern picker.
	2. pattern editor.

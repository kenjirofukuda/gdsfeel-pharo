drawing
strokeOutlineOn: aCanvas 
	| savedColor |
	(self canDisplayKindForKey: 'TX') ifFalse: [ ^ self ].
	morph fastDrawing ifTrue: [ ^ self ].
	savedColor := morph penColor.
	"morph penColor: self penColor."
	morph 
		drawOn: aCanvas
		fittingStrokeStringOrig: element contents
		bounds: element dataBounds.
	morph penColor: savedColor
rubberband
hideLocationPane: aMorph
	aMorph ifNil: [ ^ self ].
	aMorph contents: ''.
	aMorph visible: false.

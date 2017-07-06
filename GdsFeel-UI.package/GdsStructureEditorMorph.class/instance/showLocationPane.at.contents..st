rubberband
showLocationPane: aMorph at: aWorldPoint contents: anObject
	| loc text |
	self viewport ifNil: [ ^ self ].
	text := anObject
		ifNil: [ String
				streamContents: [ :s | 
					s nextPutAll: (aWorldPoint x printShowingDecimalPlaces: 3).
					s space.
					s nextPutAll: (aWorldPoint y printShowingDecimalPlaces: 3) ] ]
		ifNotNil: [ anObject asString ].	"printShowingDecimalPlaces: 3"
	aMorph contents: text.
	aMorph setProperty: #worldPoint toValue: aWorldPoint copy.
	loc := (self viewport xy2hv: aWorldPoint) + self bounds origin + 5 asPoint.
	aMorph position: loc.
	aMorph visible
		ifFalse: [ aMorph visible: true ]
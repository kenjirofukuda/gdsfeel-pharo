drawing-world
drawOn: aCanvas fillPolyLineVertices: aPointArray
	| hvPoins |	
	aPointArray isEmpty ifTrue: [^self].
	hvPoins := self viewport xy2hvPoints:  aPointArray.
	aCanvas drawPolygon: hvPoins color: self penColor borderWidth: 0 borderColor: nil.
	
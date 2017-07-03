as yet unclassified
update: anObject
	(#(columnCount rowCount) includes: anObject)
		ifTrue: [^self changed: #requestArrayShapeLabel].
	super update: anObject.
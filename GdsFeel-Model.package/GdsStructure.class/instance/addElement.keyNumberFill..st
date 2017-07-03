accessing
addElement: aGdsElement keyNumberFill: aBoolean
	"| refLayer |"
	"colElements add: aGdsElement."
	elements ifNil: [ elements := Array new ].
	elements := elements copyWith: aGdsElement.
	dataExtentForElements := nil.
	aGdsElement structure: self.

	aBoolean
		ifTrue: [aGdsElement keyNumber: self nextKeyNumber].
		
	"aGdsElement hasLayer
		ifTrue: [
			refLayer := layers atNumber: aGdsElement layerNumber.
			]."
	
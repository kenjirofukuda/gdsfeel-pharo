as yet unclassified
import: dxf shape: aDxfShape
	| gdsElementClass element sel |
	gdsElementClass := self gdsElementClassOf: aDxfShape.
	gdsElementClass ifNil: [ ^ self ].
	sel := self selectorOfDxfShape: aDxfShape.
	(self respondsTo: sel) ifFalse:  [^ self ].
	element := gdsElementClass basicNew initialize.
	element setProperty: #dxfShape toValue: aDxfShape.
	element ownColor: aDxfShape color.
	element datatype: 0.
	element pathtype: 0.
	element layerNumber: (self structure layers atName: (dxf layerOf: aDxfShape) name) layerNumber.
	self perform: sel with: aDxfShape with: element.
	self structure addElement: element.
	self structure pushDirtyReservedArea: element	
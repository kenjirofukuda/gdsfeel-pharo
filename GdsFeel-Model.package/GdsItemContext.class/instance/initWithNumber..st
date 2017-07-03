initialization
initWithNumber: anInteger
	self initialize.
	itemNumber := anInteger.
	offset := 0 @ 0.
	layerNumber := 1.
	datatype := 0.
	structureName := ''.
	wire := GdsWireContext new.
	strans := GdsStructureTransform new.
	ashape := nil.
	(Smalltalk at: #GdsAShapeContext ifAbsent: [ nil ])
		ifNotNil: [ :clazzAref | ashape := clazzAref new propertyOwner: self ].
	self digitaizingMode: #straight.
	self elementType: #boundary
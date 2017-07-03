command
importAttribute: aGdsElement
	self ownColor: aGdsElement ownColor.
	aGdsElement hasLayer ifTrue: [self layerNumber: aGdsElement layerNumber].
	aGdsElement hasDataType ifTrue: [self pathtype: aGdsElement datatype].
	aGdsElement hasPathType ifTrue: [self pathtype: aGdsElement pathtype].
	aGdsElement hasWidth ifTrue: [self width: aGdsElement width].
	(aGdsElement isMemberOf: GdsBoxText ) ifTrue: [self text: aGdsElement contents].
	(aGdsElement isKindOf: GdsStructureReference)
		ifTrue: [
			self structureName: aGdsElement structureName.
			self angle: aGdsElement angle.
			self mag: aGdsElement mag .
			self setReflected: aGdsElement isReflected].
	self colVertices addAll: aGdsElement vertices.
	(aGdsElement type = #aref)
		ifTrue: [
			ashape xStep: aGdsElement xStep.
			ashape yStep: aGdsElement yStep.
			ashape columnCount: aGdsElement columnCount.
			ashape rowCount: aGdsElement rowCount.
			colVertices := nil.
			self colVertices add: aGdsElement xy.].
	wire removeGeometryCache.
	self elementType: aGdsElement type.
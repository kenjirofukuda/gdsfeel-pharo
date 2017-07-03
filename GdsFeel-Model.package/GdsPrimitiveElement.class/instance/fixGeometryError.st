debugging
fixGeometryError
	| newPoints|
	self vertexCount < self requiredVertexCount ifTrue: [^self].
	newPoints := OrderedCollection new.
	GeometryUtils removeDuplicatePoints:  self vertices on: newPoints.
	self privateWipe.
	self vertices: (self validateVertices: newPoints).
	
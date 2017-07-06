as yet unclassified
eachAction
	analisysResult := GeometryUtils 
		analisysSegmentsAt: (self snapedWorldPoint2) pointArray: self currentItem vertices.
	"analisysResult explore."
	replaceVertexIndex := self lookupReplaceVertexIndex. 
	self currentItem removeVertexAt: replaceVertexIndex.
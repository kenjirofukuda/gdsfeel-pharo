action
firstAction
	analisysResult := GeometryUtils 
		analisysSegmentsAt: (self snapedWorldPoint2) pointArray: self currentItem vertices.
	"analisysResult explore."
	replaceVertexIndex := self lookupReplaceVertexIndex. 
	(self currentItem holdsElement)
		ifTrue: [referencePoint := self currentItem vertices at: replaceVertexIndex]
		
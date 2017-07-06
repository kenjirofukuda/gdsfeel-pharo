action
oddAction
	"TODO: Test Segment of vertex analisysresult"
	analisysResult := 
		GeometryUtils 
			analisysSegmentsAt: (self snapedWorldPoint2) 
			pointArray: self currentItem vertices.
	moveToSeg := nil.
	offsetSeg := nil.
	crossPointToPostSeg := nil.
	crossPointToPreSeg := nil.
	"Next Message"
	self prompt: self moveToMessage.

analisys
analisys: aPoint 
	| result |
	result := GeometryUtils analisysSegmentsAt: aPoint pointArray: self vertices.
	result at: #element put: self.
	^ result 
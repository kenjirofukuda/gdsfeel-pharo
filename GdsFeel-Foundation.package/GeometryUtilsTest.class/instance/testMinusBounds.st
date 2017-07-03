tests
testMinusBounds
	"minusBounds allways negative rectangle"
	self assert: GeometryUtils minusBounds origin > GeometryUtils minusBounds corner.
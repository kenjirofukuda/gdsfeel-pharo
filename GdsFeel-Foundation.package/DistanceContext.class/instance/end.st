accessing
end
	^ end ifNil: [end := lineSegment end dist: testPoint ]
testing
canGridDraw
	^ self grid displayMultiply ~= 0
		and: [ (self gridScale x * self absoluteScale) asFloat * self grid displayMultiply > 8.0 ]
private
lookupLocalBounds: localBounds
	| vw vh |
	vw := (self xStep * (self columnCount - 1)) + localBounds width. 
	vh := (self yStep * (self rowCount - 1)) + localBounds height.
	^localBounds origin extent: vw@vh 
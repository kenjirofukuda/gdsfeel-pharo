accessing
patternValues
	^ self dataGroups 
		select: [ :g | g code = 49 ]
		thenCollect: [ :g | g data trim asNumber ]
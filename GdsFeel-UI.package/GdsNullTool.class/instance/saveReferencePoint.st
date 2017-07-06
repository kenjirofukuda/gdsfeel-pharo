offset action
saveReferencePoint
	referencePoint := self snapedWorldPoint2.
	lastDeltaPoint := 0 @ 0.
	morph referenceLocationPane
		ifNotNil:
			[ :ocationMorph | morph showLocationPane: ocationMorph at: referencePoint ]
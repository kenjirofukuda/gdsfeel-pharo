analisys-linesegment
lookupVertexIndex: anAlisysResult
	| segInfo distanceMap segIndex whichSide |
	segIndex := anAlisysResult at: #index.
	segInfo := (anAlisysResult at: #infos) at: segIndex.
	distanceMap := segInfo last.
	whichSide := segInfo first.
	(#cross == whichSide)
		ifTrue: [
			whichSide := 
				((distanceMap at: #startToCross) <= (distanceMap at: #endToCross))
					ifTrue:[#start] ifFalse:[#end]].
	^(#start == whichSide) 
		ifTrue: [segIndex] ifFalse:[segIndex + 1].
accessing
viewScale: aScale
	aScale < self minScaleLimit 
		ifTrue: [
			Transcript cr; show: '*** WARNING *** minimam scale limit.'.
			^self].
	aScale > self maxScaleLimit 
		ifTrue: [
			Transcript cr; show: '*** WARNING *** maximam scale limit.'.
			^self].
	scale setValue: aScale.
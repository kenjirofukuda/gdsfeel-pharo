accessing-points
collectFor: aSegemntMessage
	^self lineSegments collect: [:seg | seg perform: aSegemntMessage].
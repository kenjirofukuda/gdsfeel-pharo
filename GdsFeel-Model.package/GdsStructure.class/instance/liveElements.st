accessing
liveElements
	^self elements reject: [:each | 
		each state = #inTrush or: [each damaged]].
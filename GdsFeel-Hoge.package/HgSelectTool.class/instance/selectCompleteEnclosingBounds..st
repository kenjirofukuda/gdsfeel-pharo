event handler
selectCompleteEnclosingBounds: dragDeviceBounds
	(self document graphics select: [ :e | dragDeviceBounds containsRect: (e devicdeBoundOf: self viewport) ])
		ifNotEmpty: [ :graphics | graphics do: [ :e2 | e2 selected: true ] ]
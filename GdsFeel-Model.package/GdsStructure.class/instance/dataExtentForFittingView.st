accessing
dataExtentForFittingView
	self elements isEmpty 
		ifTrue: [^self safeNoElementDataExtent.].
	^self dataExtentForElements.
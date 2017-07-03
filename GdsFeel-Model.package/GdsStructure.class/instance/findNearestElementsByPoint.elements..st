debug
findNearestElementsByPoint: aPoint elements: filteredElements
	| distanceOrderElements insideElements |
	filteredElements
		ifEmpty: [^nil].
	filteredElements size = 1
		ifTrue: [ ^ filteredElements ].
	insideElements := #().
	"insideElements := filteredElements
		select: [:each  | each findBounds containsPoint: aPoint ]."	
	insideElements ifEmpty: [insideElements := filteredElements].	
	distanceOrderElements := insideElements
		sort: [:a :b | (a dist: aPoint) < (b dist: aPoint)].
	^ distanceOrderElements.
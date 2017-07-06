drawing
visibleElements
	^self clipedElements select: [:el | el isVisible]
	
	
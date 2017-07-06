drawing
visibleElements
	^self refStructure elements select: [:each | 
		each isVisible and: [self isDrawableElement: each] ].
			
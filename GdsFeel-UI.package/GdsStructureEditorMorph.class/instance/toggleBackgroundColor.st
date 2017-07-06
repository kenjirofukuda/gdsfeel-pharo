appearance
toggleBackgroundColor
	self color: (self visiblePenColor = Color black
		ifTrue:[Color black]
		ifFalse:[Color white]).
	self gridLayer invalidRect: self gridLayer bounds.
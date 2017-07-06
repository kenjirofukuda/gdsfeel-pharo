action
acceptFromPoint: aPoint1 toPoint: aPoint2
	| bounds |
	bounds := Rectangle encompassing: {  aPoint1.  aPoint2  }.
	self acceptBoundsAction: bounds.
	morph invalidBounds: bounds.
	morph redraw.
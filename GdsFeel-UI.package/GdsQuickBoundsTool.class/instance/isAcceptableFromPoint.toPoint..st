testing
isAcceptableFromPoint: aPoint1 toPoint: aPoint2
	| bounds |
	bounds := Rectangle encompassing: {  aPoint1.  aPoint2  }.
	^self isAcceptableBounds: bounds.
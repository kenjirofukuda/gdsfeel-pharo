specs
example
	| kind |
	kind := GdsKind new initWithKey: 'PT' description: 'Point'. 
	self new kind: kind; openWithSpec.
	kind explore.
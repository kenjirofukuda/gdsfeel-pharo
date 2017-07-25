accessing
showExtentBounds: aBoolean
	| changed1 |
	changed1 := showExtentBounds ~= aBoolean.
	showExtentBounds := aBoolean.
	changed1
		ifTrue: [ self forceRedraw ]
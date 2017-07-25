accessing
showAxisLines: aBoolean
	| changed1 |
	changed1 := showAxisLines ~= aBoolean.
	showAxisLines := aBoolean.
	changed1
		ifTrue: [ self forceRedraw ]
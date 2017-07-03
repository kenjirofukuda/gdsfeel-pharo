as yet unclassified
limitedPoint: aPoint
	| x y |
	x := aPoint x < 0 
		ifTrue: [aPoint x max:  -32768]
		ifFalse: [aPoint x min:  32767].
	y := aPoint y < 0 
		ifTrue: [aPoint y max:  -32768]
		ifFalse: [aPoint y min:  32767].
	^x@y.	
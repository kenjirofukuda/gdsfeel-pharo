as yet unclassified
asCirculerIndex: segIndex segments: segs
	| index |
	index := segIndex \\ segs size. 
	index = 0 ifTrue: [index := segs size].
	self assert: [index between: 1 and: segs size].
	^index
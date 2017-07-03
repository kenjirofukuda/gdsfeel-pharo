accessing
elements
	| set |
	self isEmpty ifTrue: [^#() copy].
	set := ids asSet.	
	^self structure liveElements select: [:each | set includes: each keyNumber].
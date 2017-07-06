viewport
insideViewLevels
	viewRange ifNil: [^true].
	^self viewRange includes: self portStack size - 1.
	
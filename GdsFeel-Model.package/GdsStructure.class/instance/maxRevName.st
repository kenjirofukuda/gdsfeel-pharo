accessing - resource
maxRevName
	| revs files |
	self extractDirectory ensureCreateDirectory.
	files := self extractDirectory filesMatching: self filePattern.
	revs := files collect: [ :f | (f basename findTokens: '.') second asInteger].
	revs ifEmpty: [revs := Array with: 1].
	^self fileNameRevision: revs max.
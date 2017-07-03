private
memberMatcher: memberName
	| m|
	m :=  '([^.]+)\.(\d+)\.(gdsfeelbeta)' asRegex .
	(m matches: memberName)
		ifTrue: [ ^m ].
	^nil. 
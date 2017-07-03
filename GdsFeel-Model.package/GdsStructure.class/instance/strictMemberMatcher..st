private
strictMemberMatcher: memberName
	| m|
	m :=  ('(', self name , '\.(\d+)\.(gdsfeelbeta)') asRegex .
	(m matches: memberName)
		ifTrue: [ ^m ].
	^nil. 
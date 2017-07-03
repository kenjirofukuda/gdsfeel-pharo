tests
testMemberMatcher
	| m |
	m := self sampleStructure memberMatcher: 'AIUEO.1.gdsfeelbeta'.
	self assert: m notNil.
	self assert: 4 equals: m subexpressionCount.
	self assert: 'AIUEO.1.gdsfeelbeta' equals: (m subexpression: 1).
	self assert: 'AIUEO' equals: (m subexpression: 2).	
	self assert: '1' equals: (m subexpression: 3).

	m := self sampleStructure memberMatcher: 'AIUEO..gdsfeelbeta'.
	self assert: m isNil.

	m := self sampleStructure memberMatcher: 'AIUEO.*.gdsfeelbeta'.
	self assert: m isNil.

	m := self sampleStructure memberMatcher: '...1.gdsfeelbeta'.
	self assert: m isNil.

	m := self sampleStructure memberMatcher: '.1.gdsfeelbeta'.
	self assert: m isNil.

	m := self sampleStructure memberMatcher: 'AIUEO.-1.gdsfeelbeta'.
	self assert: m isNil.	
	
	m := self sampleStructure memberMatcher: 'AIUEO.1.gdsfeel'.
	self assert: m isNil.	
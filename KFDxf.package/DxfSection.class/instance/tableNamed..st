accessing
tableNamed: aString
	^ self tables detect: [ :section | section name sameAs: aString ] ifNone: [  ] 
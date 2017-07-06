accessing
sectionNamed: aString
	^ self sections detect: [ :section | section name sameAs: aString ] ifNone: [  ] 
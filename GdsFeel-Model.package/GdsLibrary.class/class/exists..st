accessing
exists: aString
	| checkName |
	checkName := self baseName: aString.
	^self baseNames anySatisfy: [:each | each sameAs: checkName] 
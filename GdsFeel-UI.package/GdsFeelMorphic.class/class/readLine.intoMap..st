localize
readLine: aString intoMap: aDictionary
	| items |
	aString ifEmpty: [^self].
	items := aString splitOn: ','.
	items size < 2 ifTrue: [^self].
	items := items collect: [:each | each trimBoth ].
	self readRow: items intoMap: aDictionary.

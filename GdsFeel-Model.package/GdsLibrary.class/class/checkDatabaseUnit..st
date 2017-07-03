check
checkDatabaseUnit: aNumber
	aNumber < 10 ifTrue: [^self error: 'DBU LEAST 10'].
	
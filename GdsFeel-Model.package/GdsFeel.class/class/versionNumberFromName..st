as yet unclassified
versionNumberFromName: aName
	| items verString |
	items := aName findTokens: '.'.
	items ifEmpty: [^0].
	items size = 3 ifFalse: [^0].
	verString := items at: 2.
	verString isAllDigits ifFalse: [^0].
	^verString asNumber
	
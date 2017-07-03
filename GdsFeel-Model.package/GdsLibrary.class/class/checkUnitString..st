check
checkUnitString: aString
	(self  unitStrings includes: aString asUppercase)
		ifFalse: [^self error: ('UNITS ONLY {1}' format: {self unitsString })].
	
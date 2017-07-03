accessing
name
	file ifNil: [ ^'!!!ERROR!!!' ].
	^file basenameWithoutExtension asUppercase .
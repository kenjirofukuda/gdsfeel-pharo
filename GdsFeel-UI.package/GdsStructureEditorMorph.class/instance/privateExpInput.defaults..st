utility
privateExpInput: aMessage defaults: aDefault
	|  reply separatedItems values |
	reply := UIManager default request: aMessage initialAnswer: aDefault.
	reply ifNil: [^Array new].
	reply ifEmpty: [^Array new].
	separatedItems := reply findTokens: ' '.
	separatedItems ifEmpty: [^Array new].
	values :=  separatedItems  collect: [:each | Float readFrom: each ].
	^values asArray.
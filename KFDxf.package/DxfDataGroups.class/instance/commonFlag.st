accessing
commonFlag
	^ (self numberByNumber: 70)
		ifNil: [ 0 ]
		ifNotNil: [ :v | v ]
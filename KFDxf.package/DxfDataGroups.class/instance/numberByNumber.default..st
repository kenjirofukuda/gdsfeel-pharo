accessing
numberByNumber: aNumber default: v
	(self stringByNumber: aNumber)
		ifNotNil: [ :string | ^ string trim asNumber].
	^ v
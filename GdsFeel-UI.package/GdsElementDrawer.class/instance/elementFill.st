accessing
elementFill
	self useFlatFill
		ifTrue: [^self flatFill].
	^BitmapFillStyle fromForm: self petternForFill
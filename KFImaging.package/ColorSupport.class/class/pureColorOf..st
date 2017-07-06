service
pureColorOf: aColor
	aColor isGray
		ifTrue: [
			aColor luminance <= 0.5
				ifTrue: [^Color black]
				ifFalse: [^Color white].]
		ifFalse: [^Color h: (aColor hue ) s: 1.0 v: 1.0].

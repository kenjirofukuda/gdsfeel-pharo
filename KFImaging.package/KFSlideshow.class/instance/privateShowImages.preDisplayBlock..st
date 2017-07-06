private
privateShowImages: aImages preDisplayBlock: aPerDisplayBlock 
	aImages do: 
		[ :img | 
		self isAbort ifTrue: [^self].
		aPerDisplayBlock value.
		self isAbort ifTrue: [^self].
		self displayImage: img.
		self isAbort ifTrue: [^self].]
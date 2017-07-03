initialization
release
	ashape ifNotNil: 
		[ ashape removeDependent: self.
		ashape := nil ].
	super release
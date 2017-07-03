updating
update: aParameter
	aParameter == #tstructEnabled
		ifTrue: [
			self changed: #tstructEnabled.
			self changed: #closelibEnabled].
	aParameter == #elementType
		ifTrue: [self changed: #elementType].
	super update: aParameter.
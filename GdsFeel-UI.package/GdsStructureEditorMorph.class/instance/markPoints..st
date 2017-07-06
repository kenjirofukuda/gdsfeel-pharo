utility
markPoints: aPoints
	aPoints ifEmpty: [^self].
	self setVisible: true forKey:  #mark.
	aPoints do: [:each |
		self mark: each.].
	self invalidRect: self bounds.
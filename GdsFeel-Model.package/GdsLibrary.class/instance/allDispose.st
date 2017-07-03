initialization
allDispose
	self class allInstVarNames  do: [ :each |
		self instVarNamed: each put: nil.
		 ]

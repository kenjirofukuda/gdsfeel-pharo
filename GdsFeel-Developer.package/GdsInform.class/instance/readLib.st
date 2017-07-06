service
readLib
	| structure |
	reader reset.
	self readHeader.
	self readUpToFirstStruct.
	[structure := self readStruct.
	structure isNil]
		whileFalse: [
			library addStructure: structure.]
	
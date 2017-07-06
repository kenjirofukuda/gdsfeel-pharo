as yet unclassified
lookupTypeCodeMap
	| map |
	map := Dictionary new.
	self spec do: [:each |
		map at: each first put:  each second].
	^map
accessing
atName: aString
	| layer |
	self numbers do: [ :i | 
		layer := self atNumber: i.
		(layer name sameAs: aString)
			ifTrue: [ ^ layer ] ].
	layer := self atNumber: (self numbers max + 1).
	layer name: aString.
	^ layer
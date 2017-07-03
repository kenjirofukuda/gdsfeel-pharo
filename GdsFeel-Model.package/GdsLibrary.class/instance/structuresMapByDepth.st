accessing - analisys
structuresMapByDepth
	| map |
	map := Dictionary new.
	self structures
		do: [ :s | (map at: s maxDepth ifAbsentPut: [ OrderedCollection new ]) add: s ].
	^ map
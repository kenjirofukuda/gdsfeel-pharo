localize
readRow: aCollection intoMap: aDictionary
	|   map |
	aCollection size < 2 ifTrue: [^self].
	map := Dictionary new.
	map at: #gdsName put: aCollection first.
	map at: #captionName put: aCollection second.
	aCollection size >= 3
		ifTrue: [ map at: #toolTipText put: aCollection third].
	aDictionary at: (map at: #gdsName) put: map. 

private
libInfoFromIniOrig: aIniStream
	| map |
	map := self libInfoMapFromIni: aIniStream.
	({ 'name' . 'dbu' . 'unit'}
		anySatisfy: [:each | (map includesKey: each) not])
		ifTrue: [^self error: 'LIBRARY INFO FORMAT ERROR'].
	({ 'name' . 'dbu' . 'unit'}
		anySatisfy: [:each | (map at: each ifAbsent: [nil]) isNil])
		ifTrue: [^self error: 'LIBRARY INFO FORMAT ERROR'].
	^map.
	
	
	
	
	  
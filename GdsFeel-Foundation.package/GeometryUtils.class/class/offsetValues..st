as yet unclassified
offsetValues: aNumberArray
	|  values |
	values := OrderedCollection new.
	aNumberArray doWithIndex: [ :v :i | | v2|  
		i < aNumberArray size
			ifTrue: [ 
				v2 := aNumberArray at: (i + 1).
				values add: (v2 - v).  ].
		] .
	^ values asArray		
	
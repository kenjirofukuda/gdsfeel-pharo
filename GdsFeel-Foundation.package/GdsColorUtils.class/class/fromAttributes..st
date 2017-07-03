as yet unclassified
fromAttributes: aDictionary 
	| a r g b |
	a := (aDictionary at: 'a' ifAbsent: [1.0]) asNumber.		
	r := (aDictionary at: 'r' ifAbsent: [1.0]) asNumber.		
	g := (aDictionary at: 'g' ifAbsent: [1.0]) asNumber.		
	b := (aDictionary at: 'b' ifAbsent: [1.0]) asNumber.
	^Color r: r g: g b: b alpha: a. 										
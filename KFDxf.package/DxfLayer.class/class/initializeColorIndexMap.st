as yet unclassified
initializeColorIndexMap
	ColorIndexMap := Dictionary new.
	(NeoJSONReader fromString: self colorStringMapJson)
		keysAndValuesDo: [ :key :value | 
			ColorIndexMap at: key asInteger put: (Color colorFrom: value) ]
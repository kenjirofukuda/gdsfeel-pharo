accessing-points
directionsPacked
	^(self directions inject: OrderedCollection new into: [:subtotal :each | 
		subtotal ifEmpty: [subtotal add: each; yourself]
				ifNotEmpty: [subtotal add: (each - subtotal last); yourself]]) asArray.
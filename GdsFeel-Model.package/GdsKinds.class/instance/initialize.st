initialization
initialize
	keyOrder := OrderedCollection new.
	kinds := Dictionary new.
	self specRecords
		do: [ :triplet | 
			| kind |
			kind := GdsKind new initWithKey: triplet first description: triplet second.
			kind setVisible: triplet last.
			kind setSelectable: true.
			keyOrder add: triplet first.
			kinds at: triplet first put: kind.
			kind selectableProperty whenChangedDo: [ self fireChanged ].
			kind visibleProperty whenChangedDo: [ self fireChanged ] ].
	keyOrder := keyOrder asArray
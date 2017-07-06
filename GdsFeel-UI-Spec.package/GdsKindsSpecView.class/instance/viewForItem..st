as yet unclassified
viewForItem: aGdsKind
	viewMap ifNil: [ viewMap := Dictionary new ].
	^ viewMap at: aGdsKind ifAbsentPut: [ (GdsKindSpecView new model: aGdsKind; buildWithSpec) ]

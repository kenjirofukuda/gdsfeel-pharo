as yet unclassified
viewForItemByMorph: aGdsLayer
	viewMap ifNil: [ viewMap := Dictionary new ].
	^ viewMap at: aGdsLayer ifAbsentPut: [ (GdsLayerStateMorph new layer: aGdsLayer; yourself) ]
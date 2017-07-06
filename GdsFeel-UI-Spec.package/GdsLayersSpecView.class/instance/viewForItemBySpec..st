as yet unclassified
viewForItemBySpec: aGdsLayer
	viewMap ifNil: [ viewMap := Dictionary new ].
	^ viewMap at: aGdsLayer ifAbsentPut: [ (GdsLayerSpecView new layer: aGdsLayer; buildWithSpec) ]
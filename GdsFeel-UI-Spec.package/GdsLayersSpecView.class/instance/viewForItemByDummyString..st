as yet unclassified
viewForItemByDummyString: aGdsLayer
	viewMap ifNil: [ viewMap := Dictionary new ].
	^ viewMap at: aGdsLayer ifAbsentPut: [ aGdsLayer asString]
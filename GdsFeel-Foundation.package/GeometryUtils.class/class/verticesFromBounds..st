as yet unclassified
verticesFromBounds: aBounds
	^{
		aBounds origin x @ aBounds origin y .
		aBounds origin x @ aBounds corner y .
		aBounds corner x @ aBounds corner y .
		aBounds corner x @ aBounds origin y .
		aBounds origin x @ aBounds origin y}.		
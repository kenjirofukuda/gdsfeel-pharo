initialization
initializeGridLayer
	| layer |
	layer :=self layerForKey: #grid.
	layer setDrawOnBlock: [:localCanvas :morph |
		self drawGridOn:  localCanvas layerMorph: morph]
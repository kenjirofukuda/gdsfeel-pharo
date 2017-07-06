initialization
initializeStructureChooserLayer
	| layer |
	layer :=self layerForKey: #structureChooser.
	layer color: Color lightBlue. 
	self setupChooserLayout: layer.
	layer visible: false.

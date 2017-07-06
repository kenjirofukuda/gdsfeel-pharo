initialization
initializeLibraryChooserLayer
	| layer |
	layer :=self layerForKey: #libraryChooser.
	layer color: Color darkGray.
	self setupChooserLayout: layer.
	layer visible: true.
	"layer addMorphCentered: RectangleMorph new."

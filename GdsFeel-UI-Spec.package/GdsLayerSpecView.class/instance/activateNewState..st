initialization
activateNewState: newState
	layerNumberModel label: (newState layerNumber asString padLeftTo: 2).
	
	labelModel label: newState name.
	self color: newState color.

	"model to view"	
	newState colorProperty whenChangedDo: [ :newColor | self color: newColor ].
	super activateNewState: newState.
	colorChooserMorph changed.
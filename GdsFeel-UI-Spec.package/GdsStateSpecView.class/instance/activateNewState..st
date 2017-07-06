initialization
activateNewState: newState
	self enabledModels.
	selectableModel state: newState isSelectable.
	visibleModel state: newState isVisible.
	selectableModel whenChangedDo: [ :newBoolean | newState setSelectable: newBoolean ].
	visibleModel whenChangedDo: [ :newBoolean | newState setVisible: newBoolean ].
	newState selectableProperty whenChangedDo: [ :newBoolean | selectableModel state: newBoolean ].
	newState visibleProperty whenChangedDo: [ :newBoolean | visibleModel state: newBoolean ]
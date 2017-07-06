initialization
initializePresenterForState: aGdsState
	aGdsState
		whenChangedDo: [ :newState | newState 
			ifNil: [ self disableModels ] 
			ifNotNil: [ self activateNewState: newState ] ]
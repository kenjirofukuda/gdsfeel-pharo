initalize
initialize
	ids := OrderedCollection new asValueHolder.
	structure := nil asValueHolder.
	ids
		whenChangedDo: [ structure value ifNotNil: [ :s | s updateIdState ] ]
initialization
initializeWidgets
	listModel := self newList.
	listModel displayBlock: [ :element | self viewForItem: element ].
	model := nil asValueHolder.
	model
		whenChangedDo: [ :newStates | 
			newStates
				ifNil: [ listModel items: #() ]
				ifNotNil: [ 
					listModel items: newStates all.
					 ] ]
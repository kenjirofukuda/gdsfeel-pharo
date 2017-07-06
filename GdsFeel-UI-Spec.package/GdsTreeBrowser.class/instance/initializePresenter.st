initialization
initializePresenter
	super initializePresenter.
	tabManager whenTabSelected: [ self changeTabSelection ].
	self initializeMenuPresenter.
	structureSortBlock whenChangedDo: [ tree updateTree ].
	tree autoDeselection: false.
	{elementList.
	visibleElementList}
		do: [ :listModel | 
			listModel autoDeselect: false.
			listModel
				whenSelectedItemChanged: [ :el | el ifNotNil: [ el structure idSelection id: el keyNumber ] ] ].
	self whenWindowChanged: [ :w | w whenClosedDo: [ self onWindowClosed ] ].
	GdsStation default announcer
		when: GdsStructureDuplicated
		do: [ :ann | 
			self revealStructure: ann structure.
			self showAsNewTop ]
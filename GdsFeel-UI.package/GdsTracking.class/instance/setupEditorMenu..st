menu
setupEditorMenu: aMenuGroupModel
	self structureMorph idNotEmpty
		ifTrue: [ 
			self setupIdSelectionMenu: aMenuGroupModel ].

private
installToolOn: aMenuGroupModel specSelector: specSelector
	| userInfo |
	(self perform: specSelector) do: [ :toolSpec |
		toolSpec isCollection 
			ifTrue: [ 
				userInfo := nil.
				toolSpec size >=2
					ifTrue: [ 
						toolSpec size >= 3 ifTrue: [ userInfo := toolSpec third ].
						aMenuGroupModel addItem: [ :item |
							item name: toolSpec first.
							item action: [ 
								self treeActivatedStructureEditorDo: [ :m |
									m currentToolClass: toolSpec second userInfo: userInfo ]
								 ] ]
						 ]
				 ]
		 ]
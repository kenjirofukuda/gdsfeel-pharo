action - front most structure
idStructure
	| strucName  reply |
	self
		frontMostStructureEditorDo: [ :morph | 
			strucName := self requestStructureName.
			strucName ifNil: [ ^ self inform: 'Cancel''ed' ].
			morph
				currentToolClass: GdsClickTestTool
				userInfo: [ :points :tool :worldPoint |
					reply := self privateClickReplyPoints: points tool: tool worldPoint: worldPoint .
					reply class = Point 
						ifTrue: [
							morph structure idStructureNamed: strucName  origin: reply.
							tree updateTree ].
					(reply = #continue )
						ifFalse: [ tool finish ].
					 ]	]
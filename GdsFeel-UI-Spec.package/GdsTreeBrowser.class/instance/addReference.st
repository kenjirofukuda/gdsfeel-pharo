action - front most structure
addReference
	|  reply |
	self
		frontMostStructureEditorDo: [ :morph | 
			| strucName |
			strucName := morph privateChooseStructureName.
			strucName ifNil: [ ^ self ].
			morph
				currentToolClass: GdsClickTestTool
				userInfo: [ :points :tool :worldPoint | 
					reply := self privateClickReplyPoints: points tool: tool worldPoint: worldPoint.
					reply class = Point
						ifTrue: [ 
							self privateAddReferenceNamed2: strucName point: reply.
							tree updateTree.].
					reply = #continue
						ifFalse: [ tool finish ] ] ]
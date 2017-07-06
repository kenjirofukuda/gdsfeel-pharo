action - front most structure
privateAddReferenceNamed2: aName point: aPoint
	|  |
	self
		frontMostStructureEditorDo: [ :morph | 
			morph structure currentItem sref.
			morph structure currentItem structureName: aName .
			morph structure currentItem ce: aPoint.
			morph structure currentItem put. ]
accessing
validateVertices: aPointArray editorContext: aGdsEditorContext
	| points vPoint ce1 |
	points := super validateVertices: aPointArray.
	ce1 := points last.
	(points first = ce1)
		ifFalse: [
			points := aPointArray asOrderedCollection.
			vPoint := aGdsEditorContext completionPointFrom: ce1 to: points first.
			vPoint ifNotNil:[
				(aGdsEditorContext digitaizingMode = #orthint)
					ifTrue: [
						points last = vPoint
							ifFalse:[points add: vPoint.]]]. 
			points add: points first].
	^points asArray.
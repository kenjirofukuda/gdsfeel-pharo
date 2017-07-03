analisys
vertexPointsOfElements: elements transform: aTransform
	| allPoints |
	allPoints := OrderedCollection new.
	elements
		do: [ :e | 
			e isReference
				ifTrue: [ | newTransform |
					newTransform := aTransform composedWithLocal: e transform.
					allPoints
						addAll: (self vertexPointsOfElements: e refStructure elements transform: newTransform) ]
				ifFalse: [ allPoints addAll: (e vertices collect: [ :p | aTransform transformPoint: p ]) ] ].
	^ allPoints
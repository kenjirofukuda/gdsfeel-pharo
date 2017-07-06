drawing-feedback
drawItemVertexNumbersOn: aLocalCanvas zeroBased: aBoolean
	| index points |
	index := aBoolean ifTrue: [0] ifFalse: [1].
	points := self model currentItem verticesWithoutClosePoint.
	(points size >= 2)
		ifTrue: [
			points
				do: [:p |
					| indexStr |
					indexStr := '({1})' format: {index}.
					self drawOn: aLocalCanvas text: indexStr at: p.
					index := index + 1]].
	
	
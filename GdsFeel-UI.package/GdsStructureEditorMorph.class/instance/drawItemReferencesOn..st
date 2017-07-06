drawing-feedback
drawItemReferencesOn: aLocalCanvas
	self model currentItem vertices
		ifNotEmpty: [ :points |
			points
				do: [:p |
					self drawOn: aLocalCanvas markDiamondPointAt: p.]].
	
	
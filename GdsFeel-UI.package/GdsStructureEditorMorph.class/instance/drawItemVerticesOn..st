drawing-feedback
drawItemVerticesOn: aLocalCanvas
	self model currentItem vertices
		ifNotEmpty: [ :points |
			self drawOn: aLocalCanvas markDiamondPointAt: points first.
			points allButFirst
				do: [:p |
					self drawOn: aLocalCanvas markPointAt: p]].
	
	
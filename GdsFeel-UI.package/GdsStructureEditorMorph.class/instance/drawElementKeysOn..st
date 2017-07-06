drawing-feedback
drawElementKeysOn: aLocalCanvas
	self 
		penColor: self visibleMarkerColor
		during: [
			self visibleElements do: [:e |
				self drawOn: aLocalCanvas text: e keyNumber asString at: e xy]].
	
	
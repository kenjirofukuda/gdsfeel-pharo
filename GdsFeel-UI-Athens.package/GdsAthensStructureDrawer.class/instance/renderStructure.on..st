rendering
renderStructure: aGdsStructure on: aCanvas
	aGdsStructure elements 
		do: [ :el | 
			aCanvas pathTransform
				restoreAfter: [
					self strokeElement: el on: aCanvas] ]
	
	
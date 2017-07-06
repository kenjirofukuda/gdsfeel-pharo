updating
update: anObject
	GdsFeel ifDebugOn: [:s |
		s nextPutAll:  self class printString.
		s nextPutAll: ' recieve: '.
		s nextPutAll: anObject printString.].
	(#(gridScale gridOffset gridDisplayMultiply) includes: anObject)
		ifTrue: [
			self removeGridCanvas.
			self changed: #requestGridScaleLabel.
			self changed: #requestGridDisplayMultiplyLabel.
			self changed].

	(anObject == #put)
		ifTrue: [
			self currentTool
				ifNotNil: [
					self currentTool autoFinishAfterPut 
						ifTrue: [
							self clearTool.
							self hideRubberbandLocationPanes]]].

	({ #geometry . #color . #idDelete . #layerState . #kindState} includes: anObject)
		ifTrue: [
			(anObject = #geometry) ifTrue: [self owner model changed: #relabel].
			self removeOffCanvas.
			^self changed].
	(anObject = #dirty)
		ifTrue: [self owner model changed: #relabel].
	^super update: anObject.
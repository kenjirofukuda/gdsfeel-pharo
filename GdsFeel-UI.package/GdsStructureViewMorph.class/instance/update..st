updating
update: anObject
	(anObject == #newLayer)
		ifTrue: [self changed: #newLayer].
	(anObject == self viewport)
		ifTrue: [
			self removeCachedCanvas.
			^self changed].
	(self isElementCollection: anObject)
		ifTrue: [
			colClipBounds ifNil: [colClipBounds := OrderedCollection new.].
			anObject do: [:each | 
				self invalidBounds: each findBounds.
				colClipBounds add: each findBounds].
			self removeOffCanvas.
			self changed].		
	^super update: anObject.
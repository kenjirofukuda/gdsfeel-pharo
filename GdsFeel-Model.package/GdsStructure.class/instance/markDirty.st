updating
markDirty
	self currentItem holdsElement 
		ifTrue: [self pushDirtyReservedArea: self currentItem editElement]
		ifFalse: [
			self liveElements ifNotEmpty: [
				self pushDirtyReservedArea: self liveElements last]].
	self changed: #dirty.
	
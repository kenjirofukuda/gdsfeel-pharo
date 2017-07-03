private
comitDirty
	|element |
	element := self popDirtyReservedArea.
	element 
		ifNotNil: [
			dirtyElements ifNil: [dirtyElements := OrderedCollection new].
			dirtyElements add: element].
	self changed: #dirty.		
private
revertDirty
	self popDirtyReservedArea.
	self changed: #dirty.
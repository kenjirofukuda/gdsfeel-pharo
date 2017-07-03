objects from disk
save
	self saveLayers.
	self structures do: [:s | s save ].
	self makeArchive
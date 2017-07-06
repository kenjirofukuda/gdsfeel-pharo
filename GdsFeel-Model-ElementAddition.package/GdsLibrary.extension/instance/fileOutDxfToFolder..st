*GdsFeel-Model-ElementAddition
fileOutDxfToFolder: aContainerFolder
	| libFolder containerFolder |
	containerFolder := aContainerFolder.
	containerFolder ifNil: [ containerFolder := './' asFileReference  ].
	libFolder := (containerFolder asFileReference / self libName) ensureCreateDirectory.
	self structures do: [ :s | s fileOutDxfToFolder: libFolder ]
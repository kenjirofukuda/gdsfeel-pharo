*GdsFeel-Model-ElementAddition
fileOutJsonToFolder: aContainerFolder
	| libFolder containerFolder |
	containerFolder := aContainerFolder.
	containerFolder ifNil: [ containerFolder := './' asFileReference ].
	libFolder := (containerFolder asFileReference / self libName) ensureCreateDirectory.
	file := libFolder / self libName , '.json'.
	file ensureDelete.
	file
		writeStreamDo: [ :s | s nextPutAll: (NeoJSONWriter toStringPretty: self) ]
as yet unclassified
structureDidChanged
	super structureDidChanged.
	self clearTool.
	self clearMarker.
	self changed: #fileOutPictureEnabled.

documentation-support
fileOutPicture
	self exportPictureBaseName
		ifNotNil: [
			self fileOutPictureBaseNamed: self exportPictureBaseName]
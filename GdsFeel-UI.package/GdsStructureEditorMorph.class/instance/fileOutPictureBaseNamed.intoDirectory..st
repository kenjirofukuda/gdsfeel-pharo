documentation-support
fileOutPictureBaseNamed: aBaseName intoDirectory: aDirectory
	| fName  |
	fName := GdsFeel 
		directoryPath: aDirectory fullName nextNameFor: aBaseName extension:'png'. 
	PNGReadWriter putForm: self imageForm onFileNamed: (aDirectory / fName).
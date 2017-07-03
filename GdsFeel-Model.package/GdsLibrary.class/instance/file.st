accessing
file
	^file ifNil: [ file := GdsFeel projectDirectory / self libNameWithExtension]
	
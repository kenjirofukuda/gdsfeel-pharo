*GdsFeel-Model-ElementAddition
fileOutDxfToFolder: aFileReference
	| file containerFolder |
	containerFolder := aFileReference.
	containerFolder ifNil: [ containerFolder := './' asFileReference  ].
	file := containerFolder asFileReference / (self name asUppercase , '.dxf').
	self fileOutDxfNamed: file nextVersion
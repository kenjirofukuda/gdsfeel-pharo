*GdsFeel-Model-ElementAddition
fileOutDxfDebug
	| file |
	file := './debug.dxf' asFileReference .
	self fileOutDxfNamed: file nextVersion
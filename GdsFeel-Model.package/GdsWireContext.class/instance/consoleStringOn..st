printing
consoleStringOn: aStream
	aStream nextPutAll: 'WIDTH: '.
	aStream print: self width.
	aStream cr.
	aStream nextPutAll: 'PATHTYPE: '.
	aStream print: self pathtype.

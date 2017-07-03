printing
consoleStringOn: aStream
	aStream nextPutAll: 'COLUMNS: '.
	aStream print: self columnCount.
	aStream cr.
	aStream nextPutAll: 'ROWS: '.
	aStream print: self rowCount.
	aStream cr.
	aStream nextPutAll: 'XSTEP: '.
	aStream print: self xStep.
	aStream cr.
	aStream nextPutAll: 'YSTEP: '.
	aStream print: self yStep
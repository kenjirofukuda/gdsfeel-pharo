printing
consoleStringOn: aStream
	aStream nextPutAll: 'MAG: '.
	aStream print: self mag.
	aStream cr.	
	aStream nextPutAll: 'ANGLE: '.
	aStream print: self angle.
	aStream cr.	
	aStream nextPutAll: 'REFL: '.
	aStream print: (self isReflected ifTrue: ['Y'] ifFalse:['N']).
printing
consoleStringOn: aStream
	self editElement ifNil: [^aStream nextPutAll: 'ITEM NOT GOTTEN'].
	aStream nextPutAll: 'ELEMENT TYPE: '.
	aStream nextPutAll: self elementType asString asUppercase.
	aStream cr.
	editElement 
		ifNotNil: [
			aStream nextPutAll: 'KEYNUMBER: '.
			aStream print: editElement keyNumber.
			aStream cr.].
	aStream nextPutAll: 'LAYER: '.
	aStream print: self layerNumber.
	aStream cr.
	aStream nextPutAll: 'DATATYPE: '.
	aStream print: self datatype.
	aStream cr.
	wire consoleStringOn: aStream.
	aStream cr.
	aStream nextPutAll: 'SNAME: '.
	aStream print: self structureName.
	aStream cr.
	strans consoleStringOn: aStream.
	aStream cr.
	ashape consoleStringOn: aStream.

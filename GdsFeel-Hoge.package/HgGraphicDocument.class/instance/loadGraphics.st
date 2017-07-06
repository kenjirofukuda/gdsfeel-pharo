initialization
loadGraphics
	self appConfigFile isFile
		ifFalse: [ 
			^ self inform: 'File not found: ' , String cr , self appConfigFile asString ].
	self appConfigFile
		readStreamDo: [ :fs | 
			| xyDataArray |
			xyDataArray := (NeoCSVReader on: fs)
				addFloatField;
				addFloatField;
				upToEnd.
	self addGraphics: 
			(xyDataArray
				collect: [ :xyData | 
					HgPointGraphic new origin: ((xyData at: 1) @ (xyData at: 2)) ]) ]
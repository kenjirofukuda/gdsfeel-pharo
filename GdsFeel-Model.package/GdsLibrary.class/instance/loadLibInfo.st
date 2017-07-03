objects from disk
loadLibInfo
	(self extractDirectory / 'LIB.ini') 
		readStreamDo: [:stream | 
			(self class libInfoFromIni: stream) 
			ifNotNil: [ :map |
				[self privateLibName: (map at: 'name'). 
				self databaseUnit: (map at: 'dbu') asInteger.
				self unitString: (map at: 'unit')] 
					on: Error
					do:  [:ex | 
						^self error: 'LIBRARY INFO FORMAT ERROR']].]
		ifAbsent: ['LIB.ini not found' traceCr].
	
service
codeGenarateOn: aStream colors:  aColorArray varNamePrefix: aPrefix
	
	aStream
		cr;
		nextPutAll: '| '.
	1 to: aColorArray size do: [ :index |
		aStream nextPutAll: aPrefix.
		aStream nextPutAll:(index printString).
		aStream nextPut: Character space].
	aStream
		nextPut: $|;
		cr.
	(self hexStringArrayFromColors: aColorArray)
		doWithIndex: [ :hexColorExpr :index |
			aStream
				nextPutAll: aPrefix; 
				nextPutAll: (index printString);
				nextPutAll: ' := ';
				nextPutAll: 'Color fromString: '; 
				nextPutAll: hexColorExpr;
				nextPut: $.;
				cr.
			].
	aStream cr; flush.

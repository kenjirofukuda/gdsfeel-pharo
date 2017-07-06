initialization
lookupLinesWithConvertor: aTextConverttor
	"DxfContainer sample dumpLines"
	^ Array streamContents: [ :arrayStream | 
		self file readStreamDo: [ :s |
			aTextConverttor
				ifNotNil: [s converter: aTextConverttor].
			[s atEnd ]
				 whileFalse: [
					arrayStream nextPut: s nextLine ] ] ]
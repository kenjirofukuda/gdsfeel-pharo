initialization
dumpLines
	"DxfContainer sample dumpLines"
	self file readStreamDo: [ :s |
		s converter: ShiftJISTextConverter new.
		[s atEnd ]
			 whileFalse: [
				s nextLine traceCr.]
		].
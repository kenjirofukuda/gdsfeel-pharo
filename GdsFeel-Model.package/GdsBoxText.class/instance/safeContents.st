accessing
safeContents
	^self contents select: [ :c | c asciiValue > 255 or: [ c shouldBePrintedAsLiteral  ] ].
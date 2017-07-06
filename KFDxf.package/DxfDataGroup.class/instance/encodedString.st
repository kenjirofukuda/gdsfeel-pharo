accessing
encodedString
	^ [self data convertFromEncoding: 'utf-8'] on: Error do: [ :ex | ex return: (self data convertFromEncoding: 'sjis') ]
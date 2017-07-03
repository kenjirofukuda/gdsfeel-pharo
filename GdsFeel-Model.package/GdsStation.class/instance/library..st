accessing
library: aGdsLibrary
	aGdsLibrary ifNotNil: [aGdsLibrary station: self].
	library setValue: aGdsLibrary
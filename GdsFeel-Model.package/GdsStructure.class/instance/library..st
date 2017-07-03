initialization
library: aGdsLibrary.
	library ifNotNil: [ self error: 'library already set. int this structure' ].
	library := aGdsLibrary.
	

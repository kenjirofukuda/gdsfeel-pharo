testing
isEndTable
	^ self code = 0 and: [ self data trim sameAs: 'ENDTAB' ]
testing
isBeginTable
	^ self code = 0 and: [ self data trim sameAs: 'TABLE' ]
testing
isBeginSection
	^ self code = 0 and: [ self data trim sameAs: 'SECTION' ]
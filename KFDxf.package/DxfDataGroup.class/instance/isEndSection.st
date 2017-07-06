testing
isEndSection
	^ self code = 0 and: [ self data trim sameAs: 'ENDSEC' ]
accessing
text
	^ text ifNil: [ text := self lookupText ]
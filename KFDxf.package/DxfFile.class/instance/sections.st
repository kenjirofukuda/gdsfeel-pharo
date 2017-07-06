accessing
sections
	^ sections ifNil: [ sections := self splitSections ]
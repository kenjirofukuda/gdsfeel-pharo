accessing
lines
	""
	^ lines ifNil: [ lines := self lookupLines  ]
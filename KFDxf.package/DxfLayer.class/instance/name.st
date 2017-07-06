accessing
name
	^ name ifNil: [ name := self lookupName ]
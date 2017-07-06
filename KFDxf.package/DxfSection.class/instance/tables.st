accessing
tables
	^ tables ifNil: [ tables := self lookupTables ]
*GdsFeel-Model-ElementAddition
printDxfOn: aStream
	self dataGroups ifNotNil: [ :groups | groups do: [ :each | each printDxfOn: aStream ] ]
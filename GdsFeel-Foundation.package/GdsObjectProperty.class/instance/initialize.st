initialize-release
initialize 
	super initialize.
	propertyType := self class typeClass.
	propertyValue := nil.
	lock := false.
	
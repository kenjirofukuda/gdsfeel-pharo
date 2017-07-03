t-propertiesOwner properties counting
propertyCounter 
	^ self properties at: #propertyCounter ifAbsentPut: [ Dictionary new]
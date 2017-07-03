instance creation
initlibNamed: name 
	^self initlibNamed: name databaseUnits: 1000 unitString: 'M' 

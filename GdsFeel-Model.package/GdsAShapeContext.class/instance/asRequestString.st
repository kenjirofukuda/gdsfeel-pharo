accessing
asRequestString
	^ GdsFeel join: (self values collect: [ :each | each asString ]) using: ' '
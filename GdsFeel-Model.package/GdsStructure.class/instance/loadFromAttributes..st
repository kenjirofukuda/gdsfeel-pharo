objects from disk
loadFromAttributes: aDictionary
	| iso8601 tempName |
	
	iso8601 := (aDictionary at: 'created' ifAbsent: [self timeCreatedForStorage]) asString.
	iso8601
		ifNotNil: [timeCreated := DateAndTime fromString: iso8601].

	iso8601 := (aDictionary at: 'modified' ifAbsent: [self timeModifiedForStorage]) asString.
	iso8601
		ifNotNil: [timeModified := DateAndTime fromString: iso8601].
		
	tempName := aDictionary at: 'name' ifAbsent: [].
	tempName
		ifNotNil: [savedName := tempName].
	
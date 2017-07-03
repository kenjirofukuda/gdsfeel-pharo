attribute
timeCreated
	timeCreated ifNil: [timeCreated := DateAndTime now].
	^timeCreated.
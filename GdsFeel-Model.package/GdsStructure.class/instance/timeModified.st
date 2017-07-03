attribute
timeModified
	timeModified ifNil: [timeModified := DateAndTime now].
	^timeModified.
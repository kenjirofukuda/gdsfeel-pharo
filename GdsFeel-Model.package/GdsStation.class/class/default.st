instance creation
default
	^Default ifNil: [ Default := GdsStation basicNew initialize ].
	
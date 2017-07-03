defaults
default
	DefaultCompatibility ifNil: [DefaultCompatibility := self create.].
	^DefaultCompatibility.

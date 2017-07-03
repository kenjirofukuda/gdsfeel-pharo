accessing
numbers
	numbers ifNil: [numbers := self lookupNumbers].
	^numbers.
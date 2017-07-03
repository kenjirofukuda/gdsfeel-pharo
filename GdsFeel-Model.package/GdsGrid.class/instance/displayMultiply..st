accessing
displayMultiply: aValue
	| value |
	value := aValue asInteger .
	value negative ifTrue: [^self].
	displayMultiply := value.
	self changed: #gridDisplayMultiply.
	
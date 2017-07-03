action
closeStructure
	"self assertNilDependent."
	self structure ifNil: [^self error: 'structure already closed.'].
	self structure closeWithSave.
	self structure: nil.
	
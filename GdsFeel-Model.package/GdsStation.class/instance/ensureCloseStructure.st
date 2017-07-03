action
ensureCloseStructure
	"self assertNilDependent."
	self structure ifNil: [^self].
	self closeStructure
	
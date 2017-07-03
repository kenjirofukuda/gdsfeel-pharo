printing
privateClose
	"self items ifNotNil: [self items forgetStructure]."
	self idSelection ifNotNil: [self idSelection forgetStructure].
	dirtyElements := nil.
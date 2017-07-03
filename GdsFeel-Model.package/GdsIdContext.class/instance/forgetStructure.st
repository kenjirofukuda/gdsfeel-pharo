private
forgetStructure
	self idClear.
	self structure ifNotNil: [ids announcer unsubscribe: self structure].
	self structure: nil.
	
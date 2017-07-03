as yet unclassified
ensureSandbox
	| newName |
	newName := self uniqueSandboxLibraryName.
	self ensureCreateLibraryNamed: newName.
	self library: (self ensureCreateLibraryNamed: newName).
	(self library ensureCreateStrucureNamed: newName)
		ifNotNil: [ :s | 
			s == self structure
				ifFalse: [ self structure: s ] ]
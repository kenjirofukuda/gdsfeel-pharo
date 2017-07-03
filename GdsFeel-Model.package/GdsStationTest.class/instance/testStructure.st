tests-accessing
testStructure
	| changeCount reciever |
	changeCount := 0.
	GdsStation default library: nil.
	reciever := [ changeCount := changeCount + 1.
	self inform: GdsStation default structure name ].
	GdsStation default announcer
		when: #structureChanged
		send: #value
		to: reciever.
	GdsStation default
		openLibraryNamed: 'BGHIER.DB'
		during: [ :library | 
			library structures
				do: [ :structure | GdsStation default structure: structure ].
			self assert: library structures size equals: changeCount.
			library autoAllocateLayerColors ].
	GdsStation default library: nil.
	GdsStation default structure: nil.
	GdsStation default announcer unsubscribe: reciever
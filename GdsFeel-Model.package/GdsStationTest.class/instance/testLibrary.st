tests-accessing
testLibrary
	| changeCount reciever |
	self assert: self sampleLibrary notNil.
	self assert: (self sampleLibrary libName sameAs: 'BGHIER').
	GdsStation default library: nil.
	changeCount := 0.
	reciever := [ changeCount := changeCount + 1.
	self inform: GdsStation default library libName ].
	GdsStation default announcer
		when: #libraryChanged
		send: #value
		to: reciever.
	GdsStation default libraries
		do: [ :lib | GdsStation default library: lib ].
	self assert: GdsStation default libraries size equals: changeCount.
	GdsStation default announcer unsubscribe: reciever
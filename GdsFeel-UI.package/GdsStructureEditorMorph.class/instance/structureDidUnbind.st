accessing
structureDidUnbind
	self viewport
		ifNotNil: [ lastSessionsGrid := self viewport grid copy.
			lastSessionsGrid removeDependent: self ].
	self releaseViewports.
	self stopStepping.
	self mouseLayer stopStepping.
	(Smalltalk at: #GdsStationUI ifAbsent: [  ])
		ifNotNil: [ :clazz | 
			(self ownerThatIsA: clazz)
				ifNotNil: [ :ui | 
					self setupStructureChooser: ui model.
					self setVisible: true forKey: #structureChooser ] ].
	self structure announcer unsubscribe: self
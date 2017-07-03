maintenance
garbageCollect.
	self structure ifNotNil: [ ^ self inform: 'Cannt garbageCollect: use structure' ].
	self library ifNotNil: [ ^ self inform: 'Cannt garbageCollect: use library' ].
	GdsStructure allInstancesDo: [ :s | s allDispose ].	
	GdsLibrary allInstancesDo: [ :l | l allDispose ].
	3 timesRepeat: [ Smalltalk garbageCollect ].		
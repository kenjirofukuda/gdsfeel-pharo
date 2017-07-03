copying
copyNamed: aNewName
	| newInstance announcement |
	newInstance := self copy.
	newInstance removeAllElements.
	self elements do: [ :e | newInstance addElement: e copy. ].
	newInstance idSelection idClear.
	newInstance currentItem holdsElement ifTrue: [newInstance currentItem unget].	
	newInstance privateName: aNewName.
	self library addStructure: newInstance.
	newInstance forceSave.
	announcement := GdsStructureDuplicated new
				structure: newInstance;
				sourceStructure: self;
				yourself.
	self announcer announce: announcement.
	self library announcer announce: announcement.	
	GdsStation default announcer announce: announcement.
	^ newInstance
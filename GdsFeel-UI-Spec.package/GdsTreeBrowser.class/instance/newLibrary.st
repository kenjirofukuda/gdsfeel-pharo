action - selection independent
newLibrary
	"Gds"

	| name unit msg reply lib |
	name := GdsFeelMorphic requestLibraryName.
	name ifNil: [ ^ self ].
	unit := GdsFeelMorphic chooseUnit.
	unit ifNil: [ ^ self ].
	msg := 'initialize ok?
DB: {1}
UNIT: {2}'
		format:
			{name.
			unit}.
	reply := UIManager default confirm: msg orCancel: [ nil ].
	reply ifNil: [ ^ self ].
	reply
		ifFalse: [ ^ self ].
	lib := self station initlibNamed: name unitString: unit.
	lib
		ifNil: [ self inform: 'initialize failed' ]
		ifNotNil: [ 
			self
				inform:
					('{1}
initialized' format: {name}) ]
*KFImaging
ensureDirectoryIf
	"Pharo 2.0 and Pharo 3.0"
	^self perform: ((self respondsTo: #ensureCreateDirectory)
		ifTrue: [#ensureCreateDirectory]
		ifFalse: [#ensureDirectory]).
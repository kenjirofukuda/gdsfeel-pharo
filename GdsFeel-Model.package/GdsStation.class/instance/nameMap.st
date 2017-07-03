private
nameMap
	"self default nameMap explore."

	nameMap ifNil: [ nameMap := Dictionary new ].
	self fileMap
		keysAndValuesDo:
			[ :f :lib | nameMap at: f basenameWithoutExtension ifAbsentPut: [ lib ] ].
	(nameMap values reject: [ :l | l file exists ])
		ifNotEmpty: [ :removedLibs | 
			removedLibs
				do: [ :l | nameMap removeKey: l file basenameWithoutExtension ] ].
	^ nameMap
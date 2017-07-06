private
convertSelector
	| dType |
	dType := bytes at: 2.
	dType = 1 ifTrue: [^#dataBytes].
	dType = 2 ifTrue: [^#int2Array].
	dType = 3 ifTrue: [^#int4Array].
	dType = 5 ifTrue: [^#real8Array].
	dType = 6 ifTrue: [^#asString].
	^nil.
	
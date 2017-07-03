check
checkAccept: anObject
	acceptWhen
		ifNotNil: [ | blockResult |
			blockResult := (acceptWhen value: anObject).
			blockResult
				ifFalse: [ ^self error: ('Can''t accept value: ', anObject printString)]].

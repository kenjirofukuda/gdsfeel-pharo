as yet unclassified
checkPreRequiredConsumed: aSymbol abort: abort
	|  preRequiredKeys |
	preRequiredKeys := self preRequiredKeysFor: aSymbol.
	preRequiredKeys do: [:each | 
		(self hasEntry: each)
			ifFalse: [|msg|
				msg := (inform missingField: aSymbol ofElement: element).
				inform stderr: msg.
				abort ifTrue: [inform error: msg]]]
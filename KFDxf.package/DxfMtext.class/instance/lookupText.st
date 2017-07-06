accessing
lookupText
	| basicResult |
	basicResult := self rawText.
	(basicResult first = ${ and: basicResult last = $})
		ifFalse: [ ^ basicResult ].
	basicResult := basicResult allButFirst allButLast.
	(basicResult includes: $;)
		ifFalse: [ ^ basicResult ].	
	^ (basicResult findTokens: ';') last
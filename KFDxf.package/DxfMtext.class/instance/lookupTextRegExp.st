deprecated
lookupTextRegExp
	| basicResult |
	basicResult := self rawText.
	[TextMatcher 
		matchesIn: basicResult
		subexpressionsDo: [ :expression :expressionFragments | ^ expressionFragments last ]]
		on: Error do: [ :ex | ].
	^ basicResult
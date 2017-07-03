maintenance
migrateConfigulationValues
	"self migrateConfigulationValues"
	| lowerCapital |
	TypedMap ifNil: [ TypedMap := TypedConfigulation new ].
	lowerCapital := 
	[ :symbol | 
	| varName |
	varName := symbol asString.
	varName first asString asLowercase , varName allButFirst ].
	(self classVarNames reject: [ :each | each = #TypedMap ]) do: 
		[ :each | 
		(self classPool at: each) ifNotNil: 
			[ :clazzVar | 
			TypedMap 
				instVarNamed: (lowerCapital value: each)
				put: clazzVar copy ] ]
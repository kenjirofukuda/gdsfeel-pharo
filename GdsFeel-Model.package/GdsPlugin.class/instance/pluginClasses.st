as yet unclassified
pluginClasses
	"self new pluginClasses explore."

	| pragmas  |
	pragmas := (PragmaCollector
		filter: [ :pragma | | sel |
			sel := 	(pragma respondsTo: #methodSelector) ifTrue: [ #methodSelector ] ifFalse: [ #selector ]. 
			(pragma perform: sel)  = #gdsPlugin ]) reset.
	^ pragmas collect: [ :each | each method methodClass baseClass ]
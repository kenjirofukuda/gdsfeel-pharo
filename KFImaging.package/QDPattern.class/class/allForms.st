example
allForms
	"QDPattern allForms"

	| f pat col filler |
	
	col := OrderedCollection new.

	1 to: QDPattern size do: [ :patIndex |
		pat := QDPattern formAt: patIndex.
		filler := InfiniteForm with: pat.
		f := Form extent: (self exampleIconSize@self exampleIconSize).
		filler displayOn: f.
		col add: f.
	].
	^col asArray.

	
accessing
atNumber: anInteger
	| newLayer create result |
	layers ifNil: [layers := Dictionary new.].
	create := false.
	result := layers 
		at: anInteger 
		ifAbsentPut: [
			newLayer := GdsLayer fromLayerNumber: anInteger.
			newLayer selectableProperty whenChangedDo: [ self fireChanged ].
			newLayer visibleProperty whenChangedDo: [ self fireChanged ].
			newLayer nameProperty whenChangedDo: [ self fireChanged ].
			newLayer layerNumberProperty whenChangedDo: [ self fireChanged ].
			newLayer colorProperty whenChangedDo: [ self fireChanged ].
			create := true.
			self fireChanged.
			newLayer].
	create 
		ifTrue: [
			numbers := nil.
			self changed: #newLayer with: result].
	^result.
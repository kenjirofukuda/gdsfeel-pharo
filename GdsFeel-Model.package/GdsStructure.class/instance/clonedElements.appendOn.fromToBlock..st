debug
clonedElements: elementCollection appendOn: aOrderedCollection fromToBlock: aBlock
	elementCollection
		do: [ :each | 
			| cloned |
			cloned := each copy.
			cloned instVarNamed: 'keyNumber' put: nil.
			aBlock value: each value: cloned.
			aOrderedCollection add: cloned ]
as yet unclassified
removeDuplicatePoints: aPointArray on: aOrderedCollection
	| prevPoint |
	prevPoint := nil.
	aPointArray do: [:each |
		prevPoint 
			ifNil: [aOrderedCollection add: each]
			ifNotNil: [
				prevPoint = each
					ifFalse: [aOrderedCollection add: each]]. 
		prevPoint := each.]
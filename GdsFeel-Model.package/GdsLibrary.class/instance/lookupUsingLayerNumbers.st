private
lookupUsingLayerNumbers
	| numberSet |
	numberSet := (Array streamContents: [:s |
		self structures do: [:struc |
			s nextPutAll: struc lookupUsingLayerNumbers]
		]) asSet.
	"Pharo: asSortedArray "
	^numberSet asArray sorted.
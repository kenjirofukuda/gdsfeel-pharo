private
lookupUsingLayerNumbers
	| numberSet |
	numberSet := (self elements 
		select: [:each | each hasLayer] 
		thenCollect: [:each | each layerNumber]) asSet.
	"Pharo: asSortedArray "
	^numberSet asArray sorted.
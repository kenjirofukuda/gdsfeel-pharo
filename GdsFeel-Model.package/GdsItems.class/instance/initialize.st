initialization
initialize
	super initialize.
	items := OrderedCollection new.
	zeroBasedIndex := GdsCompatibility default itemNumberMin.
	GdsCompatibility default itemNumberRange  do: [:each | 
		| item |
		item := GdsItemContext newWithNumber: each.
		item items: self.
		items add: item]
	
T-GdsModel
attributesMap
	| map |
	map := Dictionary new.
	self writeAttributesOn: map.
	^map
	
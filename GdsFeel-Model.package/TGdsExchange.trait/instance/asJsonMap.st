as yet unclassified
asJsonMap
	| map |
	map := Dictionary new.
	self attributesOn: map.
	self jsonElementsOn: map.
	^ map
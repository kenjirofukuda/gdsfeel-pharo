xml/json data exchange
jsonOn: aStream
	| map |
	map := Dictionary new.
	self attributesOn: map.
	self jsonElementsOn: map.
	map jsonOn: aStream.
	
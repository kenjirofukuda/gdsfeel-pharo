as yet unclassified
update
	model ifNil: [ ^ self ].
	labelMorph contents: self labelString.
	self fontUseButtonFont.
	self changed: #visibleValue.
	self changed: #selectableValue
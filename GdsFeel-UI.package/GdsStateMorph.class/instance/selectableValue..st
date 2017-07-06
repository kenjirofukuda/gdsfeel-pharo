as yet unclassified
selectableValue: aBoolean
	model ifNil: [^self].
	model setSelectable: aBoolean.
	self changed: self updateSelector.
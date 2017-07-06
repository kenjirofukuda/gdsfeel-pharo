as yet unclassified
visibleValue: aBoolean
	model ifNil: [^self].
	model setVisible: aBoolean.
	self changed: self updateSelector.
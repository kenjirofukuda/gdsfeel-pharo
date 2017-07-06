as yet unclassified
toggleVisibleValue
	model ifNil: [^self].
	model setVisible: model isVisible not.
	self changed: self updateSelector.
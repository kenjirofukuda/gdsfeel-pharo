as yet unclassified
toggleSelectableValue
	model ifNil: [^self].
	model setSelectable: model isSelectable not.
	self changed: self updateSelector.
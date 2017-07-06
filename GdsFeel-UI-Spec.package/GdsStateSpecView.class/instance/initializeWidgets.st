as yet unclassified
initializeWidgets
	labelModel := self newLabel.
	visibleModel := self newCheckBox.
	selectableModel := self newCheckBox.
	labelModel label: ''.
	visibleModel label: ''.
	selectableModel label: ''.

	model := nil asValueHolder.
	
	
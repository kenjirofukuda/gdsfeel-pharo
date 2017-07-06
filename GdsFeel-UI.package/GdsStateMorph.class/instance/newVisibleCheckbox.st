as yet unclassified
newVisibleCheckbox
	^self theme 
		newCheckboxIn: self 
		for: self 
		getSelected: #visibleValue 
		setSelected: #visibleValue: 
		getEnabled: nil 
		label: ''
		help: nil
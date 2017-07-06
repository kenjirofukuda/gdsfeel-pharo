as yet unclassified
newSelectableCheckbox
	^self theme 
		newCheckboxIn: self 
		for: self 
		getSelected: #selectableValue 
		setSelected: #selectableValue: 
		getEnabled: nil 
		label: ''
		help: nil
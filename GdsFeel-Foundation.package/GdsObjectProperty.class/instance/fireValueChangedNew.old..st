check
fireValueChangedNew: newValue old: oldValue
	propertyValue := newValue.
	self announcer announce: 
		(GdsPropertyChanged new property: self;
			newValue: newValue;
			oldValue: oldValue).
	
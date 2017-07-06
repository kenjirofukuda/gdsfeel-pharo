testing-enabled
choosePathTypeEnabled
	self structure ifNil: [^false].
	^self structure currentItem pathTypeEnabled.
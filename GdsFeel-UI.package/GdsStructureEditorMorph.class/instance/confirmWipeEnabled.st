testing-enabled
confirmWipeEnabled
	self structure ifNil: [^false].
	^self structure currentItem wipeEnabled.
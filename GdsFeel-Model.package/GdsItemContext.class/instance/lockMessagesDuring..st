accessing
lockMessagesDuring: aBlock
	self lockMessages: true.
	aBlock ensure: [ self lockMessages: false ]
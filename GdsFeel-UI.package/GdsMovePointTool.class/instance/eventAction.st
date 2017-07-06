action
eventAction
	self firstAndSecondAction.
	self prompt: self moveToMessage.
	morph invalidBounds: self calcUpdateBounds .

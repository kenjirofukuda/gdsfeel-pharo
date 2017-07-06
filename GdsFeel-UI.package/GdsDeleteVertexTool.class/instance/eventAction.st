as yet unclassified
eventAction
	self repeatEachAction.
	self prompt: self promptMessage.
	morph invalidBounds: self calcUpdateBounds .
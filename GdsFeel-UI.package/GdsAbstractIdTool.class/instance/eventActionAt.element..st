action
eventActionAt: aWorldPoint element: aGdsElement
	| keyNumber |
	keyNumber := aGdsElement ifNil: [0] ifNotNil: [aGdsElement keyNumber].
	(keyNumber > 0 and: [aGdsElement state = #inItem])
		ifTrue: [Transcript cr; show: '*** WARNING *** can''t id select when in item.']
		ifFalse: [self eventActionAt: aWorldPoint elementId: keyNumber.].
	
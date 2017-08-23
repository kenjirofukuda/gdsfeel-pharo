event handling
customMouseMove: aMouseButtonEvent
	self trackingObject
		ifNotNil: [ :track | 
			track currentEvent: aMouseButtonEvent copy.
			(self isNavigarionClick: aMouseButtonEvent)
				ifTrue: [ 
					track dragFeedbackEnabled: false.
					track viewMove ]
				ifFalse: [
					track dragFeedbackEnabled: true].
			track dragFeedbackEnabled
				ifTrue: [ track drawFeedback ] ]
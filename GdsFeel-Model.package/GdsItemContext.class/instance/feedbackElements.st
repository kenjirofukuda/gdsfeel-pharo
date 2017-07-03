utility
feedbackElements
	| el |
	el := self  editElement.
	el ifNotNil: [
		el := el copy.
		[el fromItemContext: self]
			on: Error do: [:ex | ^#() copy].
		^Array with: el ].
	
	^[self isReferenceType
			ifTrue: [self  createElements] 
			ifFalse: [ Array with: self createElement ]]
		on: Error do:  [:ex | #() copy].
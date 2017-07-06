as yet unclassified
evenAction
	referencePoint ifNil: [ ^ self ].
	lastPoint := self snapedWorldPoint2.
	self samePointEnabled
		ifFalse: [
			lastPoint = referencePoint ifTrue: [ ^ self ]].

	(self isAcceptableFromPoint: referencePoint toPoint: lastPoint)  
		ifTrue: [
			self acceptFromPoint: referencePoint toPoint: lastPoint]
		ifFalse: [
			self rejectFromPoint: referencePoint toPoint: lastPoint].		
	morph removeFeedbackCanvas.
	referencePoint := nil.
	self prompt: 'Ce 1:'	
	
action
evenAction
	| bounds idElements |
	"TimeProfiler spyOn: ["
	referencePoint ifNil: [ ^ self ].
	lastPoint := self snapedWorldPoint2.
	lastPoint = referencePoint ifTrue: [ ^ self ].
	bounds := Rectangle encompassing: {  referencePoint. lastPoint  }.
	idElements := (self idEnabledElementsInverted: (self idSelecter = #unId:)) 
		select: [ :each | each dataBounds intersects: bounds ].
	idElements do: [:each |
		 self structure idSelection perform: self idSelecter with: each keyNumber].	
	morph removeFeedbackCanvas.
	referencePoint := nil.	"]"
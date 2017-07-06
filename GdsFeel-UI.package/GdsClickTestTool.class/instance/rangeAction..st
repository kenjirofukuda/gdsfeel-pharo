as yet unclassified
rangeAction: aMouseButtonEvent
	| bounds idElements actionSelector |
	actionSelector := shiftCount > 0
		ifTrue: [ #unIdAll: ]
		ifFalse: [ #idAddAll: ].
	bounds := Rectangle
		encompassing:
			{worldPoints first.
			worldPoints last}.
	idElements := (self idEnabledElementsInverted: actionSelector = #unIdAll:)
		select: [ :each | each dataBounds intersects: bounds ].
	"self structure idSelection perform: actionSelector with: (idElements collect: [:e | e keyNumber]).	"
	morph removeFeedbackCanvas.
	referencePoint := nil
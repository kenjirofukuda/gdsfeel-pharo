action
singleAction: anEvent
	| actionSelector  foundElement pixelDistance targetElements |
	actionSelector := shiftCount > 0
		ifTrue: [ #unId: ]
		ifFalse: [ #idAdd: ].
	targetElements := self idEnabledElementsInverted: actionSelector = #unId:.
	targetElements ifEmpty: [ ^ self inform: 'no element' ].
	foundElement := self structure 
		findNearestElementByPoint: worldPoints last
		elements: targetElements.
	foundElement ifNil: [ ^ self inform: 'no element'].
	pixelDistance := morph viewport pixelSize: (foundElement dist: worldPoints last).
	pixelDistance > 10 ifTrue: [ ^ self inform: 'no element+', pixelDistance asString ].
	morph structure idSelection perform: actionSelector with: foundElement keyNumber.

		
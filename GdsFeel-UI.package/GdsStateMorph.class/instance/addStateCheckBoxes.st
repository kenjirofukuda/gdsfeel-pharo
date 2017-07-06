as yet unclassified
addStateCheckBoxes
	| outerMorph button |
	outerMorph := self newOuterMorph.
	button := self visibleCheckbox.
	outerMorph addMorphBack: button.	
	self usingSelectable
		ifTrue: [
			button := self selectableCheckbox.
			outerMorph addMorphBack: button].	
	self addMorphBack: outerMorph
initialization
createLocationPane
	| sm |
	sm := self locationPaneClass contents: ''.
	self setVisibleBorder: sm.
	sm font: GdsFeelMorphic locationCaptionFont.
	sm emphasis: ((GdsFeelMorphic borderedSensorDisplay) ifTrue: [0] ifFalse: [1]) .
	^sm
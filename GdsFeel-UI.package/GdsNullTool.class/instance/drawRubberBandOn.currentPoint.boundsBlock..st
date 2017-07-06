drawing
drawRubberBandOn: aLocalCanvas currentPoint: aPoint boundsBlock: aBoundsBlock
	| bounds |
	referencePoint ifNil: [ ^ self ].
	bounds := Rectangle encompassing: (Array with: referencePoint with: aPoint).
	morph deltaLocationPane
		ifNotNil: [ :deltaLocationMorph | 
			morph
				showLocationPane: deltaLocationMorph
				at: bounds center
				contents:
					('W:{1} H:{2} L:{3}'
						format:
							({bounds width.
							bounds height.
							(referencePoint dist: aPoint)}
								collect: [ :each | each printShowingDecimalPlaces: 3 ])) ].
	aBoundsBlock value: bounds.
	oldRubberBandBounds ifNotNil: [ morph invalidBounds: oldRubberBandBounds ].
	morph invalidBounds: bounds.
	oldRubberBandBounds := bounds copy
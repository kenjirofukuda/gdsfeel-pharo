initialization
initialize
	super initialize.
	fittingRatio := self defaultFittingRatio.
	transformStack := OrderedCollection new.
	lockUpdate := false.
	scale := (self floatNamed: 'scale' ) 
		initialValue: 1.0; 
		yourself.
	viewCenter := (GdsObjectProperty named: 'viewCenter' type: Point owner: self)
		initialValue: 0 @ 0;
		yourself.
	portCenter := (GdsObjectProperty named: 'portCenter' type: Point owner: self)
		initialValue: 0 @ 0;
		yourself.
	
	{ portCenter . scale . viewCenter } 
		do: [ :slot | 
			slot whenChangedDo: [ :prop | self damageTransform ] ].
	self endProperties.
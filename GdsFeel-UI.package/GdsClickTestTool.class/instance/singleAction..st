action
singleAction: anEvent
	| targetPoints |
	targetPoints := self
		findPoints: worldPoints last
		ifAbsent: [ :a :b :c | "{a . b . c } explore" ].
	userInfo
		ifNotNil: [ userInfo isBlock
				ifTrue: [ userInfo cull: targetPoints cull: self cull: worldPoints last copy ] ].
	morph markPoints: targetPoints.
	targetPoints do: [ :p | self inform: p asString ]
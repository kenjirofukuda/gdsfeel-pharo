accessing
snapedWorldPoint2: aWorldPoint
	| pointsStage1  |
	pointsStage1 := self findPoints: aWorldPoint ifAbsent: [ ^ self snapedWorldPoint: aWorldPoint ].
	pointsStage1 size >= 2 ifTrue: [ self inform: 'multiple points found' ].
	pointsStage1 size = 1
		ifTrue: [ ^ pointsStage1 first ].
	^ self snapedWorldPoint: aWorldPoint 
	
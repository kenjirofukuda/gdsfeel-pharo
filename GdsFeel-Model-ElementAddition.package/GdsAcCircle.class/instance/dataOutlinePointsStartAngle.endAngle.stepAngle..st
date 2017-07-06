accessing-points
dataOutlinePointsStartAngle: aStartAngle endAngle: aEndAngle stepAngle: stepAngle
	| stepDegress r cx cy rad |
	r := self radius.
	cx := self centerPoint x. 
	cy := self centerPoint y. 
	stepDegress := stepAngle.
	^ Array streamContents: [ :s |
		aStartAngle to: aEndAngle by: stepDegress do: [ :deg | | x y |
		rad := deg degreesToRadians.
		x := cx + (r * (rad cos)).
		y := cy + (r * (rad sin)).
		s nextPut: (x @ y) ] ] 
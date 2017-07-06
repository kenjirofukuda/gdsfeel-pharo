rendering
pathBuilder: pb points: aPointArray
	| points |
	"points := aPointArray collect: [ :each | each + 0.5 ]."
	points := aPointArray .
	pb absolute.
	pb moveTo: points first.
	points allButFirstDo: [ :pt | pb lineTo: pt]
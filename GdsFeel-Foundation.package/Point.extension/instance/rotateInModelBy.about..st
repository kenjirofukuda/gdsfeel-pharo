*GdsFeel-Foundation
rotateInModelBy: radians about: center 
	"Even though Point.theta is measured CW, this rotates with the more conventional CCW interpretateion of angle."
	| p r theta |
	p := self - center.
	r := p r.
	theta := radians asFloat - p theta negated.
	^ (center x asFloat + (r * theta cos)) @ (center y asFloat + (r * theta sin))
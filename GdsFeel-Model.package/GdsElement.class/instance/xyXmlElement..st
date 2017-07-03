accessing
xyXmlElement: aPoint
	| point |
	point := aPoint asNonFractionalPoint.
	^((XMLElement named: 'xy') 
		addContent: ((self stringNodeClass) string: 
			(point x asString, ' ', point y asString))) 

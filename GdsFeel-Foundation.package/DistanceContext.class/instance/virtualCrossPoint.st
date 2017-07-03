accessing
virtualCrossPoint
	^ virtualCrossPoint ifNil: [ virtualCrossPoint := testPoint nearestPointAlongLineFrom: self lineSegment start to: self lineSegment end. ]	

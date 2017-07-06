action-pattern
elementDetectAction
	| found resultPoint | 
	resultPoint := self snapedWorldPoint2.
	found := self findNearestElementByPoint: resultPoint.
	self eventActionAt: resultPoint element: found.
	
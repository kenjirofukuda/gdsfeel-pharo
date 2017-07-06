as yet unclassified
eventAction
	| ce |
	ce := self snapedWorldPoint2.
	self currentItem putPoint: ce.
	morph invalidRect: (self markUpdateBounds: ce).
	
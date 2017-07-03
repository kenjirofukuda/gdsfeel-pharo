*GdsFeel-Foundation
removeAllFoundIn: aCollection 
	| result |
	result := value removeAllFoundIn:  aCollection.
	self valueChanged: aCollection.
	^ result
drawing
toolFeedbackEnabled
	^(self currentTool isNil not and: 
		[(self structure currentItem holdsElement) or: 
		[self structure currentItem vertices isEmpty not] ])
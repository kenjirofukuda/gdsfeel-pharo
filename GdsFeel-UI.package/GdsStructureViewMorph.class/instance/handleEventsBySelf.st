testing
handleEventsBySelf
	^ handleEventsBySelf ifNil: [ handleEventsBySelf := true ]
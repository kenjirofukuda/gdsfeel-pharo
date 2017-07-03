testing
isVisible
	^ super isVisible
		and: [ (self structure kinds atKey: 'PB') isVisible
				or: [ (self structure kinds atKey: 'PC') isVisible ] ]
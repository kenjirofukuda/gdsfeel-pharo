testing
isVisible
	^super isVisible and: [(self structure kinds atKey: 'BD') isVisible ].
testing
isVisible
	^super isVisible and: [(self structure kinds atKey: 'TX') isVisible or:  [(self structure kinds atKey: 'TO') isVisible]].
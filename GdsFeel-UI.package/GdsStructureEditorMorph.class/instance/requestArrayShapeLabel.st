label
requestArrayShapeLabel
	|ashape |
	ashape := self structure currentItem ashape.
	^self makeLabel: 'ASHAPE' withValue: ('{1}x{2}' format: {ashape columnCount . ashape rowCount}). 
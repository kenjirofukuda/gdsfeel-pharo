as yet unclassified
lookupGridStepsMin: aMinValue max: aMaxValue gridScale: aGridScale
	^((Interval 
		from: ((aMinValue roundTo: aGridScale) -  aGridScale) 
		to: ((aMaxValue roundTo: aGridScale) + aGridScale ) by: aGridScale) 
			collect: [:each | each roundTo: aGridScale]) asArray.
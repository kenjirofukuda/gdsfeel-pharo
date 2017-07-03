as yet unclassified
octagonalRoundTheta: aTheta
	| ratio roundedRatio |
	ratio := aTheta / Pi2.
	roundedRatio := ratio roundTo: 0.125.
	^Pi2 * roundedRatio.
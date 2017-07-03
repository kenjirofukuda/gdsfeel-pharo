transforms
xy2hv: aWorldPoint transform: aMatrixTransform2x3
	| np1 |
	(aWorldPoint isPoint)
		ifFalse: [  ].
	np1 := aMatrixTransform2x3 localPointToGlobal: aWorldPoint.	"np1 := GeometryUtils point: np1 roundTo: 1.0."
	^ GeometryUtils limitedPoint: np1 rounded
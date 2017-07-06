example
examplePatternTableForm

	"QDPattern examplePatternTableForm display."

	| margin sampleSize viewWidth viewHeight numColumn numRow panelForm iRow iCol h v |
	sampleSize := self exampleIconSize.
	margin := 5.
	viewWidth := (Display width * 0.8) asInteger.
	numColumn := viewWidth - margin // (sampleSize + margin).
	numRow := QDPattern size // numColumn.
	QDPattern size \\ numColumn = 0
		ifFalse: [numRow := numRow + 1].
	viewWidth := (sampleSize + margin) * numColumn + margin.
	viewHeight := numRow * (sampleSize + margin) + margin.
	panelForm := Form extent: viewWidth @ viewHeight depth: 32.
	self allForms
		doWithIndex: [:f :patIndex | 
			iCol := patIndex - 1 \\ numColumn.
			iRow := patIndex - 1 // numColumn.
			h := margin + (iCol * (sampleSize + margin)).
			v := margin + (iRow * (sampleSize + margin)).
			f displayOn: panelForm at: h @ v.
			panelForm
				border: (Rectangle origin: (h @ v) - 1 extent: f extent + 1)
				width: 1].
	^ panelForm
private
privateChooseLayer
	| numbers layerLabels chooseIndex |
	numbers := GdsCompatibility default layerNumberRange asArray.
	layerLabels := numbers collect: [:number | ' ', number asString, ' '].
	chooseIndex := UIManager default chooseFrom: layerLabels.
	^chooseIndex = 0 
		ifTrue: [nil]		
		ifFalse: [numbers at: chooseIndex].
	
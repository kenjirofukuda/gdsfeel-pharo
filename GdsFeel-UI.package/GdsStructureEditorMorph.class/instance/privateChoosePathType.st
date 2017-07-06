private
privateChoosePathType
	| numbers layerLabels chooseIndex |
	numbers := #(0 2).
	layerLabels := numbers collect: [:number | ' ', number asString, ' '].
	chooseIndex := UIManager default chooseFrom: layerLabels.
	^chooseIndex = 0 
		ifTrue: [nil]		
		ifFalse: [numbers at: chooseIndex].
	
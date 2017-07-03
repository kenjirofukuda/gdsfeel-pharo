private
changedPutGetDependent
	self lockMessages ifTrue: [ ^ self ].
	self putGetDependentSelectors do: [:each | self changed: each].
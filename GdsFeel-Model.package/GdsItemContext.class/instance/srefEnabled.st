testing
srefEnabled
	self structure ifNil: [ ^ false ].
	self structure library ifNil: [ ^ false ].
	^ self structure referenceEnabledStructureNames isNotEmpty
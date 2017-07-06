testing-enabled
chooseStructureNameEnabled
	self structure ifNil: [ ^ false ].
	self referenceEnabledStructureNames ifEmpty: [ ^ false ].
	^ self structure currentItem isReferenceType
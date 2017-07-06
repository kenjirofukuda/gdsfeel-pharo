private
privateChooseStructureName
	| snames chooseIndex |
	snames := self referenceEnabledStructureNames.
	chooseIndex := UIManager default chooseFrom: snames.
	^ chooseIndex = 0 
		ifTrue: [ nil ]
		ifFalse: [ snames at: chooseIndex ]
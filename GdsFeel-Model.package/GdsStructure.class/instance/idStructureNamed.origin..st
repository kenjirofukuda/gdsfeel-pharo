as yet unclassified
idStructureNamed: aStructureName origin: aOriginPoint
	| s newElements|
	self idSelection isEmpty ifTrue: [ ^ self ].
	s := self library newStructureNamed: aStructureName.
	newElements := OrderedCollection new.
	self 
		clonedElements: self idSelection elements 
		appendOn: newElements 
		fromToBlock: [:from :to |
			to moveRelative: aOriginPoint negated from: from.			
			s addElement: to ].
	newElements do: [ :e | e statusNumber: GdsElement inDatabaseStausNumber ].
	s forceSave.
	
command-handler
openStructureNamed: aStructureName ifAbsentCreate: aDoCreate
	| struc |
	struc := self library structureNamed: aStructureName. 
	(struc isNil and: [aDoCreate]) 
		ifTrue:  [self bstructName: aStructureName]
		ifFalse: [self ostructNames: [:names | aStructureName]].
	^self structure.
	
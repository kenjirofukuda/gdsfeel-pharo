private
childrenFor: anItem
	(anItem isKindOf: GdsLibrary)
		ifTrue: [ ^ anItem topStructures
				ifNotEmpty: [ :structures | 
					structures
						,
							(anItem structures
								select: [ :s | 
									s indirectReferencedStructureNames isEmpty
										and: [ (structures includes: s) not ] ]) ]
				ifEmpty: [ anItem structures ] ].
	(anItem isKindOf: GdsStructure)
		ifTrue: [ ^ anItem subStructures ].
	^ #()
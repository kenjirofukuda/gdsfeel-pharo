accessing
findDataGroup: findBlock thenStreamDo: aStreamBlock
	| s found |
	s := ReadStream on: self dataGroups.
	found := nil.
	[s atEnd or: [found notNil]]
		whileFalse: [ 
			| dataGroup |
			dataGroup := s next.
			(findBlock value: dataGroup)
				ifTrue: [ 
					aStreamBlock value: s.					
					 ].
			 ].

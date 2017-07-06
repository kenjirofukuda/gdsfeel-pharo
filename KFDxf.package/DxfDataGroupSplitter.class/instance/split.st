as yet unclassified
split
	dataGroups ifNil: [ ^ #() ].	
	beginBlock ifNil: [ ^ dataGroups ].	
	endBlock ifNil: [ ^ dataGroups ].		
	[stream atEnd]
		whileFalse: [ | dataGroup |
			dataGroup := stream next.
			self handleDataGroup: dataGroup
			 ]
				

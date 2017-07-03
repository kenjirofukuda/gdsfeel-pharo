announce
whenChangedPropertyDo: aBlock
	| block |
	
	block := [:announcement :ann | 
		aBlock 
			cull: announcement property
			cull: announcement 
			cull: ann ].
	
	self announcer when: GdsPropertyChanged  do: block
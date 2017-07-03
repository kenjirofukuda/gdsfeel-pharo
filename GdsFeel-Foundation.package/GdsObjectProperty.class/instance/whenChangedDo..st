announce
whenChangedDo: aBlock
	| block |
	"from: NewValueHolder"	
	block := [:announcement :ann | 
		aBlock 
			cull: announcement newValue  
			cull: announcement oldValue  
			cull: announcement 
			cull: ann ].
	
	self announcer when: GdsPropertyChanged  do: block
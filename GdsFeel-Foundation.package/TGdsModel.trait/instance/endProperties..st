T-GdsModel
endProperties: anInstance
	self checkAnnouncer: anInstance.
	anInstance class allInstVarNames
		do: [ :propName | 
			(anInstance instVarNamed: propName) ]
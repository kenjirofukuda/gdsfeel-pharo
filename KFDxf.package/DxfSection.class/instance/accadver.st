accessing
accadver
	(self name sameAs: 'HEADER')
		ifFalse: [ ^ '' ].
	self 
		findDataGroup: [ :dataGroup | dataGroup asArray = #(9 '$ACADVER') ] 
		thenStreamDo: [ :s | ^ s next data ].
	^ nil
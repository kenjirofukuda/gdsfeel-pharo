accessing
exportName
	^ self name isEmptyOrNil 
		ifTrue: [ self layerNumber asString]
		ifFalse: [ self name ]
	
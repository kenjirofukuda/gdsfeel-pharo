private
lookupNewCanvasEnabled
	^ ([ #MozCanvas asClass ]
		on: Error
		do: [ :ex | ex return: nil ])
		ifNil: [ false ]
		ifNotNil: [ :clazz | 
			([ clazz extent: 5 @ 5 ]
				on: Error "Windows dll moz2d dll not ready."
				do: [ :ex | ex return: nil ]) notNil ]
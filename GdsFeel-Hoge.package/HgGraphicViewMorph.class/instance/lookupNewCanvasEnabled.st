as yet unclassified
lookupNewCanvasEnabled
	^ ([#MozCanvas asClass] on: Error do: [ :ex | ex return: nil ]) notNil.
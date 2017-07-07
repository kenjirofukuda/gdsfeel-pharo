private
lookupNewCanvasEnabled
	^ ([#MozCanvas asClass] on: Error do: [ :ex | ex return: nil ]) notNil.
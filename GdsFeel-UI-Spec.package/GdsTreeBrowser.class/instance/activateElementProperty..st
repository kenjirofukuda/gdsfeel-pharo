private
activateElementProperty: aGdsElement
	aGdsElement
		ifNotNil: [ 
			(aGdsElement respondsTo: #asMagritteMorph)
				ifTrue: [ 
					| m |
					m := (aGdsElement perform: #asMagritteMorph) morph.
					m hResizing: #spaceFill.
					m vResizing: #shrinkWrap.
					m layoutChanged.
					inspectorMorph scrollTarget: m.
					inspectorMorph layoutChanged ] ]
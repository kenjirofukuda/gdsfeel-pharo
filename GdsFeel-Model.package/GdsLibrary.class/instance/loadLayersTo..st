objects from disk
loadLayersTo: aGdsLayer
	self layersFile isFile 
		ifFalse: [
			('file not found: <1p>' expandMacrosWith: self layersFile) traceCr.
			^ self].
	self layersFile 
		readStreamDo: [ :s | | doc |
			doc := [XMLDOMParser parse: s]
				on: Error 
				do: [:ex | 
					ex traceCr. 
					s reset.
					Smalltalk tools workspace openContents: s contents label: self layersFile fullName.
					nil].
			doc 
				ifNotNil: 
					[ aGdsLayer loadFromXmlDocument: doc] ].

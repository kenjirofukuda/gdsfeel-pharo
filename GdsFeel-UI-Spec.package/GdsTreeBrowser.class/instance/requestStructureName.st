private
requestStructureName
	| strucName ok default |
	strucName := nil.
		ok := false.
		default := ''.
		[ok] 
			whileFalse: [
				strucName := UIManager default request: 'Enter structure:' initialAnswer: default . 
				strucName ifNil: [ ^ strucName].
				strucName := GdsCompatibility default coerceStructureName: strucName.
				strucName = '' 
					ifTrue: [
						strucName := nil.
						ok := true.]
					ifFalse: [
						(self station library hasStructureName: strucName)
							ifTrue: [default := strucName]
							ifFalse: [ok := true]].].
	^ strucName.

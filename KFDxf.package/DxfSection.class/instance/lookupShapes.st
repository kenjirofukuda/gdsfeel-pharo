accessing
lookupShapes
	| activeShape |
	activeShape := nil.
	^ Array
		streamContents: [ :arrayStream | 
			self splitEntities
				do: [ :each | 
					| className |
					className := ('Dxf' , each first data asLowercase capitalized)
						asSymbol.
					(Smalltalk at: className ifAbsent: [ nil ])
						ifNotNil: [ :clazz | 
							activeShape := clazz new
								addDataGroupAll: each;
								yourself.
							arrayStream nextPut: activeShape ]
						ifNil: [ (className , ': Not Found') traceCr.
							activeShape ifNotNil: [ activeShape addDataGroupAll: each ] ] ] ]
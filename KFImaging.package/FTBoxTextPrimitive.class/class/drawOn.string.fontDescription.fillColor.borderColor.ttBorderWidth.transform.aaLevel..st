as yet unclassified
drawOn: aCanvas string: aString fontDescription: aFreeTypeFont fillColor: aFillColor borderColor: aBorderCollor ttBorderWidth: aTTborderWidth transform: aTransform aaLevel: anAALebel
	"WARNING: aTTborderWidth is not a final pixel width"

	"import from TTSimpleStringMorph's  drawOn:"

	| xStart glyph |
	xStart := 0.
	aCanvas asBalloonCanvas
		preserveStateDuring: [ :balloonCanvas | 
			balloonCanvas transformBy: aTransform.
			balloonCanvas aaLevel: anAALebel.
			aString
				do: [ :char | 
					| contors |
					glyph := aFreeTypeFont face glyphOfCharacter: char.
					contors := glyph outline contoursCollection
						collect: [ :assoc | assoc value , {assoc value first} ].
					balloonCanvas
						preserveStateDuring: [ :subCanvas | 
							subCanvas transformBy: (MatrixTransform2x3 withOffset: xStart @ 0).
							subCanvas
								drawGeneralPolygon: contors
								color: aFillColor
								borderWidth: aTTborderWidth
								borderColor: aBorderCollor ].
					xStart := xStart + glyph advanceX ] ]
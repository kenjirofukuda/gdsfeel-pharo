drawing-world
drawOn: aCanvas fittingString: aObject at: aWorldPoint extent: aWorldExtent pointsBlock: aBlock
	| defaultFTDesc glyph translatedContours finalTransform scaleTransform locationTransform heightRatio widthRatio ttBounds string xStart colPoints np1 skipBlock |
	defaultFTDesc := FTBoxTextPrimitive defaultFont.
	defaultFTDesc ifNil: [ ^ self ].
	string := aObject asString.
	ttBounds := FTBoxTextPrimitive calcBoundsString: string fontDescription: defaultFTDesc.
	widthRatio := aWorldExtent x asFloat / ttBounds width asFloat.
	heightRatio := aWorldExtent y asFloat / ttBounds height asFloat.
	scaleTransform := MatrixTransform2x3 withScale: widthRatio @ heightRatio.
	locationTransform := MatrixTransform2x3 withOffset: aWorldPoint.
	finalTransform := MatrixTransform2x3 identity.
	finalTransform := finalTransform composedWithLocal: locationTransform.
	finalTransform := finalTransform composedWithLocal: scaleTransform.
	"finalTransform := finalTransform composedWithLocal: (MatrixTransform2x3 withAngle: 45)."
	xStart := 0.0.
	skipBlock := [ :ptArray | 
		Array
			streamContents: [ :s | 
				1 to: ptArray size by: 3 do: [ :i | 
					s nextPut: (ptArray at: i).
					s nextPut: (ptArray at: i + 2) ] ] ].
	string
		do: [ :ch | 
			glyph := defaultFTDesc face glyphOfCharacter: ch.
			translatedContours := glyph outline contoursCollection 
				collect: [ :assoc | assoc value , {(assoc value first)} ].
			translatedContours := translatedContours
				collect: [ :ptArray | 
					| points |
					"points := skipBlock value: ptArray."
					points := ptArray.
					self mustBeAllPoints: points.
					colPoints := OrderedCollection new.
					colPoints
						addAll:
							(points
								collect: [ :pt | 
									| newPt |
									newPt := pt x asFloat @ pt y asFloat.
									newPt := newPt + (xStart @ 0.0) - ttBounds origin.
									np1 := finalTransform localPointToGlobal: newPt ]).
					colPoints add: colPoints first copy.
					self mustBeAllPoints: colPoints.
					colPoints ].
			translatedContours
				do: [ :ptArray | 
					self mustBeAllPoints: ptArray.
					aBlock value: ptArray ].
			xStart := xStart + glyph advanceX asFloat ]
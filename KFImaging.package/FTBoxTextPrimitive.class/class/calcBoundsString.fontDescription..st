as yet unclassified
calcBoundsString: aString fontDescription: aFreeTypeFont
	"import from TTFontDescription's  initializeString"
	"
	self calcBoundsString: 'UNTITLED' fontDescription: TTFontDescription default.
	"
	| xStart char glyph ttBounds |
	self assert: aFreeTypeFont notNil.
	xStart := 0.
	ttBounds := 0@0 corner: 0@0.
	1 to: aString size do:
		[:i | | bounds |
		char := aString at: i.
		glyph := aFreeTypeFont face glyphOfCharacter: char.
		bounds := GeometryUtils lookupDataBounds: glyph outline pointCollection.	
		ttBounds := ttBounds quickMerge: (bounds translateBy: xStart@0).
		xStart := xStart + glyph advanceX].
	^ttBounds
drawing-world
drawOn: aCanvas fittingStrokeStringOrig: aObject at: aWorldPoint extent: aWorldExtent
	| origin extent string  morphicBounds ttbox|
	string := aObject asString.
	extent := (self viewport transform a11 * aWorldExtent) rounded.
	origin := (self viewport xy2hv: aWorldPoint) - (0@extent y).
	morphicBounds := origin extent: extent.
	"string isWideString 
		ifTrue: 
			[ ^ aCanvas drawString: string at: origin font: nil color: self penColor ]."	
	ttbox := FTBoxTextContext new.
	ttbox aaLevel: 2.
	ttbox fillColor: self penColor.
	ttbox borderWidth: 0.
	ttbox borderColor: self penColor.
	ttbox drawOn: aCanvas string: string bounds: morphicBounds.
	
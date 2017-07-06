as yet unclassified
example1
	"Display restoreAfter: [self example1]"
	| string ttBounds morphicBounds transform borderWidth borderColor fillColor canvas fontDescription aaLevel |
	string := '監獄学園'.
	morphicBounds := Rectangle fromUser.
	borderWidth := 10.
	borderColor := Color red.
	fillColor := Color blue.
	canvas := Display getCanvas.
	fontDescription := self defaultFont.
	aaLevel := 4.
	ttBounds := FTBoxTextPrimitive 
		calcBoundsString: string
		fontDescription: fontDescription.
	transform := FTBoxTextPrimitive 
		computeTransform: morphicBounds
		ttBounds: ttBounds
		ttBorderWidth: borderWidth.
	FTBoxTextPrimitive 
		drawOn: canvas
		string: string
		fontDescription: fontDescription
		fillColor: fillColor
		borderColor: borderColor
		ttBorderWidth: borderWidth
		transform: transform
		aaLevel: aaLevel
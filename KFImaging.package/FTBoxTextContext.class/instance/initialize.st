initialization
initialize
	super initialize.
	string := SystemVersion current version.
	morphicBounds := 0@0extent:Display extent.
	isPixelWidth := true.
	borderWidth := 0.
	borderColor := Color black.
	fillColor := Color black.
	fontDescription := TextStyle defaultFont realFont.
	aaLevel := 4.
	angle := 0
	
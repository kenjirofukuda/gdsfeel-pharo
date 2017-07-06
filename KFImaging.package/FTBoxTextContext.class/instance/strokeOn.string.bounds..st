drawing
strokeOn: aCanvas string: aString bounds: aBounds
	string :=  aString asString.
	morphicBounds := aBounds.
	self calcContext.
	"FTBoxTextPrimitive strokeOn: aCanvas string: string fontDescription: self fontDescription fillColor:  self fillColor borderColor: self borderColor borderWidth: self apiWidth transform: transform  aaLevel: self aaLevel."

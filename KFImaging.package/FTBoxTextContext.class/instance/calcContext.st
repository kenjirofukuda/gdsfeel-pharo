private
calcContext
	ttBounds := FTBoxTextPrimitive 
		calcBoundsString: self string
		fontDescription: self fontDescription.
	transform := FTBoxTextPrimitive 
		computeTransform: self bounds
		ttBounds: ttBounds
		ttBorderWidth: self borderWidth
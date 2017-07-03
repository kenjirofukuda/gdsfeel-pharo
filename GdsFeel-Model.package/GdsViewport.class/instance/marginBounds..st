viewing
marginBounds: aBaseBounds
	| growFactor growWidth growHeight|
	growFactor := (self fittingRatio reciprocal) - 1.0.
	growWidth := (aBaseBounds width * growFactor) * 0.5.
	growHeight := (aBaseBounds height * growFactor) * 0.5.
	^aBaseBounds expandBy: (growWidth@growHeight).
	 
convertor
lookupMatrix2x3
	| t  rad radCos radSin|
	t := MatrixTransform2x3 identity.
	rad := angle degreesToRadians.
	radCos :=  rad cos.
	radSin := rad sin.
	t a11: mag * radCos.
	t a12: mag negated * radSin.
	t a13: self offset x.
	t a21: mag  * radSin.
	t a22: mag * radCos.
	t a23: self offset y.
	reflected
		ifTrue: [
			t a12: t a12 negated.
			t a22: t a22 negated].
	 ^t

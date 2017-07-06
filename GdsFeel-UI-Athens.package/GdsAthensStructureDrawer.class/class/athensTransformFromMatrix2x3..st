rendering
athensTransformFromMatrix2x3: aMatrixTransform2x3
	| athensAT |
	athensAT := AthensAffineTransform new.
	athensAT x: aMatrixTransform2x3 a13.
	athensAT y: aMatrixTransform2x3 a23.

	athensAT sx: aMatrixTransform2x3 a11.
	athensAT sy: aMatrixTransform2x3 a22.

	athensAT shx: aMatrixTransform2x3 a12.
	athensAT shy: aMatrixTransform2x3 a21.
	^ athensAT
	 
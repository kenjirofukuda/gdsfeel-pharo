service
mergeByLuminanceColors: aColorArray1 withColors: aColorArray2 
	| colorSet colors |

	colorSet := Set new.
	colorSet addAll: aColorArray1.
	colorSet addAll: aColorArray2.
	colors := SortedCollection new.
	colors
		sortBlock: [:c1 :c2 | c1 luminance < c2 luminance].
	colors addAll: colorSet.
	^ colors asArray.
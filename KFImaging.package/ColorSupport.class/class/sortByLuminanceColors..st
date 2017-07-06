service
sortByLuminanceColors: aColorArray
	| colorSet colors |

	colorSet := Set new.
	colorSet addAll: aColorArray.
	colors := SortedCollection new.
	colors
		sortBlock: [:c1 :c2 | c1 luminance < c2 luminance].
	colors addAll: colorSet.
	^ colors asArray.
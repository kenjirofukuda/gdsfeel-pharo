utility
autoAllocateLayerColors
	| numbers layer colorStream |
	numbers := self lookupUsingLayerNumbers.
	colorStream := ReadStream on: (Color wheel: numbers size saturation: 0.7 brightness: 1.0).
	numbers do: [:each | 
		layer := self layers atNumber: each.
		layer color: colorStream next].
	
	
	
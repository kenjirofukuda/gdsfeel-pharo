maintenance
fixLayerColors
	"self layers colorAllocated 
		ifFalse: [" 
		[self open.	
		self autoAllocateLayerColors.
		] ensure: [ self close ]"]".
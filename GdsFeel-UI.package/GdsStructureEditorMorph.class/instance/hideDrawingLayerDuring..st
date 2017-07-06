documentation-support
hideDrawingLayerDuring: aBlock
	|  visibleStateMap   |
	"save layer state"
	visibleStateMap := Dictionary new.
	layerMap keysDo: [:each |
		visibleStateMap at: each put: (self layerForKey: each) visible.].

	"hide all layers"
	layerMap keysDo: [:each |
		self setVisible: false forKey: each.].
	
	aBlock value.
		
	"restore layer state"
	layerMap keysDo: [:each |
		self setVisible: (visibleStateMap at: each) forKey: each ].
	"Debug:
	(canvas form  magnifyBy: 0.25)  asMorph openInWorld."
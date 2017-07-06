debugging
collectTopmostImagesExternalNamed: aExternalName
	^ImageMorph allInstances
		select: [:m | (m owner class = PasteUpMorph)
				and: [m externalName = aExternalName]]
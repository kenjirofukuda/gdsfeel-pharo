utility
layerOf: aDxfShape default: v
	^ self layers detect: [ :each | each name sameAs: aDxfShape layerName ] ifNone: [ v ]
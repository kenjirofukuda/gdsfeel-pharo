as yet unclassified
isVisible
	^ self structure notNil and: [(self structure layers atNumber: self layerNumber) isVisible]
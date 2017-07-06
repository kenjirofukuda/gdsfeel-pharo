as yet unclassified
importLayers: dxf
	| layerNumber |
	layerNumber := 0.
	dxf layers do: [ :each | | gdsLayer |
		gdsLayer := self structure layers atNumber: layerNumber.
		gdsLayer name: each name.
		gdsLayer color: each color.
		gdsLayer setProperty: #lineTypeName toValue: each lineTypeName.		
		gdsLayer setProperty: #dxfLayer toValue: each.
		layerNumber := layerNumber + 1.] 
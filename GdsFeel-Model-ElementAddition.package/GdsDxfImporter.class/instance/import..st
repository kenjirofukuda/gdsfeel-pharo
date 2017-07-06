as yet unclassified
import: dxf
	self structure setProperty: #dxfFile toValue: dxf.
	self importLayers: dxf.
	dxf shapes do: [ :each | self import: dxf shape: each ].
	self structure changed: #geometry.
	self structure comitDirty. 
				
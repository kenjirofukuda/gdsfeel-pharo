*GdsFeel-Model-ElementAddition
setLayerNameToDxf: aDxfShape
	"see: stanLayerTable2"
	| gdsLayer |
	gdsLayer := self structure layers atNumber: self layerNumber.
	aDxfShape layerName: gdsLayer exportName	
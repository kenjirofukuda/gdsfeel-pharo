as yet unclassified
initializeDefaults
	self addCode: 100 data: 'AcDbSymbolTableRecord'.
	self addCode: 100 data: 'AcDbLayerTableRecord'.
	"name"
	self setCode: 2 data: 'Untitled'.
	"mask"
	self setCode: 70 data: 0.
	"color index"
	self setCode: 62 data: 0.
	
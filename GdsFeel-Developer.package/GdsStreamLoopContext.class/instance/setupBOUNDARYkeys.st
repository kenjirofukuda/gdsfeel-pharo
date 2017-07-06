key specs
setupBOUNDARYkeys
	"
	FULL SPEC: 
	BOUNDARY [ELFLAGS] [PLEX] LAYER DATATYPE  XY [PROPATTR PROPVALUE]* ENDEL	
	
	MINIMUM CASE:
	BOUNDARY  LAYER DATATYPE  XY ENDEL
	"
	self addOptional: #ELFLAGS.
	self addOptional: #PLEX.
	
	self addRequired: #LAYER.
	self addRequired: #DATATYPE.
	
	self addRequired: #XY.
	
	self addOptional: #PROPATTR.
	self addOptional: #PROPVALUE.
	
	self addRequired: #ENDEL.
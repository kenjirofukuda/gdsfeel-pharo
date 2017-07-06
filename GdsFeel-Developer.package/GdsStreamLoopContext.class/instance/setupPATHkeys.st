key specs
setupPATHkeys
	"
	FULL SPEC: 
	PATH [ELFLAGS] [PLEX] LAYER DATATYPE [PATHTYPE][WIDTH] XY
	[PROPATTR PROPVALUE]* ENDEL
	
	MINIMUM CASE:
	PATH  LAYER DATATYPE  XY ENDEL
	"
	self addOptional: #ELFLAGS.
	self addOptional: #PLEX.
	
	self addRequired: #LAYER.
	self addRequired: #DATATYPE.
	
	self addOptional: #PATHTYPE.
	self addOptional: #WIDTH.
	
	self addRequired: #XY.
	
	self addOptional: #PROPATTR.
	self addOptional: #PROPVALUE.
	
	self addRequired: #ENDEL.
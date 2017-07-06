key specs
setupTEXTkeys
	"
	FULL SPEC: 
	TEXT [ELFLAGS] [PLEX] LAYER TEXTYPE [PRESENTATION] [PATHTYPE] [WIDTH] 
	[STRANS [MAG] [ANGLE]] XY STRING 
	[PROPATTR PROPVALUE]* ENDEL
	
	MINIMUM SPEC:
	TEXT  LAYER TEXTYPE  XY STRING ENDEL
	"
	self addOptional: #ELFLAGS.
	self addOptional: #PLEX.
	
	self addRequired: #LAYER.
	self addRequired: #TEXTTYPE. "NOT #DATATYPE"
	
	self addOptional: #PRESENTATION.
	self addOptional: #PATHTYPE.
	self addOptional: #WIDTH.

	self addOptional: #STRANS.
	self addOptional: #MAG.
	self addOptional: #ANGLE.
	
	self addRequired: #XY.
	self addRequired: #STRING.
	
	self addOptional: #PROPATTR.
	self addOptional: #PROPVALUE.
	
	self addRequired: #ENDEL.
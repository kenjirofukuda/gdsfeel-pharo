key specs
setupSREFkeys
	"
	FULL SPEC:
	SREF [ELFLAGS] [PLEX] SNAME [STRANS [MAG] [ANGLE]] XY 
	[PROPATTR PROPVALUE]* ENDEL
	
	MINIMUM CASE:
	SREF SNAME XY ENDEL
	"
	self addOptional: #ELFLAGS.
	self addOptional: #PLEX.
	
	self addRequired: #SNAME.
	
	self addOptional: #STRANS.
	self addOptional: #MAG.
	self addOptional: #ANGLE.
	
	self addRequired: #XY.
	
	self addOptional: #PROPATTR.
	self addOptional: #PROPVALUE.
	self addRequired: #ENDEL.
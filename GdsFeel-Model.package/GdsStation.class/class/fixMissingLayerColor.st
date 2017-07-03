mantenance
fixMissingLayerColor
	"self fixMissingLayerColor"
	self default libraries
		do: [ :l | l fixLayerColors ]
initialize-release
initialize
	super initialize.
	self setSelectable: true.
	self setVisible: true.
	layerNumber := 1 asValueHolder.
	name := '' asValueHolder.
	color := nil asValueHolder.
	
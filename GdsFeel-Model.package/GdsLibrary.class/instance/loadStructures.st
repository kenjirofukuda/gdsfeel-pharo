deprecated
loadStructures
	self extractDirectory ensureCreateDirectory. 
	Cursor wait showWhile: [self loadStructures: self extractDirectory.].
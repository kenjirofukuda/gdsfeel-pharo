action
openLibrary: aGdsLibrary
	aGdsLibrary station: self.
	self library: aGdsLibrary.
	aGdsLibrary open.
	self structure: nil.
	
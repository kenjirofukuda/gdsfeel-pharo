initialization
release
	self announcer unsubscribe: self.
	items := nil.
	structure := nil.
	library := nil.
	super release.
	
	
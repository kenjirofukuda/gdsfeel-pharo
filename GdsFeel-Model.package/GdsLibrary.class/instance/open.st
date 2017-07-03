objects from disk
open
	| announcement | 
	self isOpen 
		ifFalse: [
			self extract.
			"self privateLoad "].
	announcement := GdsLibraryOpend new library: self.
	self announcer announce: announcement.
	GdsStation default announcer announce: announcement.
instance creation
ensureOpenLibrary: aGdsLibrary during: aBlock
	| savedLib |
	savedLib := self library.
	[GdsStation default library: aGdsLibrary.
	aGdsLibrary ensureOpenDuring: aBlock.]
		ensure: [
			self library: savedLib]

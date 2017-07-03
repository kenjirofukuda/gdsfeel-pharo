action
closeLibrary
	self library
		ifNotNil: [ :lib | 
			lib close.
			self library: nil.
			lib allDispose.
			self library: nil.
			self damageStorageInformation ]
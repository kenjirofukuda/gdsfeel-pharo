action
quit
	self damageStorageInformation.
	(self libraries select: [:lib | lib isOpen ]) do: [ :lib | lib close ] 
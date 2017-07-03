updating
fireStructureChanged
	self announcer announce: #structureChanged.
	GdsFeel dependentEnabled 
		ifTrue: [
			self notifyStructureChanged].
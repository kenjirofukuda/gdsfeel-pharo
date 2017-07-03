updating
changedIdGroup
	self updateIdState.
	self changed: #tstructEnabled.			
	self changed: #unIdEnabled.
	self changed: #idClearEnabled.			
	self changed: #idDeleteEnabled.			
	self changed: #idNotEmpty.			

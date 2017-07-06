initialization
initialize
	super initialize.
	stderr := GdsLog new category: 'stderr'.
	stderr beginLog.
	stdout := GdsLog new category: 'stdout'.	
	stdout beginLog.

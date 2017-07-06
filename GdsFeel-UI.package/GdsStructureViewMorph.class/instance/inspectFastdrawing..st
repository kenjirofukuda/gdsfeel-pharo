initialization
inspectFastdrawing: anAnnouncement
	| current diff |
	current := Time microsecondClockValue.
	lastResizeAtTime ifNil: [ lastResizeAtTime := Time microsecondClockValue. ].
	diff := current - lastResizeAtTime.
	diff traceCr.
	self fireFirstdrawing.
	lastResizeAtTime := current.
	
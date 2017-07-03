debug
idDelete
	| targets |
	targets := self idSelection elements copy.
	targets do: [ :each | 
			self pushDirtyReservedArea: each.
			"each wipe" ].
	self removeElements: targets
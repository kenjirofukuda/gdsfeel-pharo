actions
create
	CompatibilityClass ifNil: [self setActiveClass].
	^CompatibilityClass new.

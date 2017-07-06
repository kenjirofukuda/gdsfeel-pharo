event handling
stepTime
	"| max |
	max := 100000.
	viewport ifNil: [^max].
	offCanvas ifNil:[^max]."
	^200.
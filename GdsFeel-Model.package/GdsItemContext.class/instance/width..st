accessing
width: aFloat
	| oldValue |
	wire width  = aFloat ifTrue: [^self].
	oldValue := wire width.
	wire width: aFloat.
	(GdsProperty new owner: self) 
		postNotificationProperty: #width oldValue: oldValue newValue: wire width. 
	self changed: #width.
	"TODO: remove this change. Model not known GUI"
	self changed: #requestWidthLabel.	

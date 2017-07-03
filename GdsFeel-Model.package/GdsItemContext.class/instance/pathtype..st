accessing
pathtype: anInteger
	wire pathtype  = anInteger ifTrue: [^self].
	wire pathtype: anInteger.
	self changed: #pathtype.
	"TODO: remove this change. Model not known GUI"
	self changed: #choosePathTypeLabel.	
	
	

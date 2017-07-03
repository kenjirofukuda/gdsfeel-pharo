accessing
datatype: anInteger
	datatype  = anInteger ifTrue: [^self].
	datatype := anInteger.
	self changed: #datatype.
	"TODO: remove this change. Model not known GUI"
	"self changed: #chooseDataTypeLabel.	"
	

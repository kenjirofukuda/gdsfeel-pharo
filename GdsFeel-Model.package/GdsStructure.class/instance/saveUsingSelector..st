key generator
saveUsingSelector: savingSelector
	self dirty ifFalse: [^self].
	timeModified := DateAndTime now.
	self perform: savingSelector.
	self flushDirtyInfo.
	"self setDirty: false.	"
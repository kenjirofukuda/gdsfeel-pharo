objects from disk
saveBlock: aBlock force: aBoolean
	aBoolean
		ifFalse: [
			self dirty ifFalse: [^self]].
	timeModified := DateAndTime now.
	aBlock value.
	self flushDirtyInfo.
	"self setDirty: false.	"
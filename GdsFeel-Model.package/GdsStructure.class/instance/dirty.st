accessing
dirty
	self removedElements ifNotEmpty: [^true].
	dirtyElements ifNil: [^false].
	^dirtyElements notEmpty.

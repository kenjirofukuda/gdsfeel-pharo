private
popDirtyReservedArea
	dirtyReservedArea ifNil: [^nil].
	dirtyReservedArea ifNotEmpty: [^dirtyReservedArea removeLast].
	
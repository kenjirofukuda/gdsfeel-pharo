initialization
initializeEditContext
	idContext := GdsIdContext new.
	idContext structure: self.
	item := (GdsItemContext newWithNumber: 0) structure: self; yourself.
	dirtyElements := nil.
	dirtyReservedArea := nil.
	
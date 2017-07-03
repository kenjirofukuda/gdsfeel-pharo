dependents
addDependent: anObject 
	super addDependent: anObject .
	items do: [ :i | i addDependent: anObject ]
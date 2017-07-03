dependents
removeDependent: anObject 
	super removeDependent: anObject .
	items do: [ :i | i removeDependent: anObject ]
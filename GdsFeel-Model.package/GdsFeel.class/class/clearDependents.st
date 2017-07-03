maintenance
clearDependents
	"GdsFeel clearDependents"
	self relatedClasses do: [:clazz | 
		clazz allInstances do: [:obj | obj breakDependents ]].
	Smalltalk garbageCollect.
maintenance
relatedClasses
	"GdsFeel rebuild"
	^(Smalltalk allClasses select: [:clazz |
		#('KF' 'Gds' 'Gpl') anySatisfy: [:each | clazz name beginsWith: each]])

as yet unclassified
splitAsClass: aClass
	| entities ent |
	entities := OrderedCollection new.
	ent := nil.
	self dataGroups do: [ :each | | handled |
		 handled := false.
		(each code = 0 and: [ self name sameAs: each data trim ])
			ifTrue: [ 
				ent 
					ifNotNil: [ 
						entities add: ent. 
						ent := nil ].
				ent 
					ifNil: [ 
						ent := aClass new. 
						ent addDataGroup: each ].
				handled := true].
		(ent notNil and: [handled not ])
			ifTrue: [ ent addDataGroup: each ].
		].
	ent 
		ifNotNil: [ 
			entities add: ent ]. 
	^ entities asArray 
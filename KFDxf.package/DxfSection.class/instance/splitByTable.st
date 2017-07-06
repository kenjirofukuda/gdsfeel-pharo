as yet unclassified
splitByTable
	| entities ent |
	entities := OrderedCollection new.
	ent := nil.
	self dataGroups do: [ :dataGroup | | handled |
		handled := false.
		dataGroup isBeginTable
			ifTrue: [
				ent := OrderedCollection new.
				handled := true]. 
		dataGroup isEndTable
			ifTrue: [
				ent 
					ifNotNil: [
						entities add: ent asArray.
						ent := nil ].
				handled := true]. 
		handled 
			ifFalse: [ 
				ent 
					ifNotNil: [
						ent add: dataGroup 
					 ]
				 ]
		].
	^ entities asArray

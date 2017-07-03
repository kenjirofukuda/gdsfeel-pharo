debug
updateIdState
	| idKeys colChangedElements|
	self idSelection ifNil: [^self].
	idKeys := self idSelection keyNumbers.
	colChangedElements := OrderedCollection new.
	(self liveElements reject: [:each | each state = #inItem])
		do: [:each | 
			(idKeys includes: each keyNumber)
				ifTrue: [
						each statusNumber ~= GdsElement inIdStausNumber
							ifTrue: [
								each statusNumber: GdsElement inIdStausNumber.
								colChangedElements add: each] ]
				ifFalse: [
						each statusNumber = GdsElement inIdStausNumber
							ifTrue: [
								each statusNumber: GdsElement inDatabaseStausNumber.
								colChangedElements add: each]]].
	self changed: colChangedElements asArray.
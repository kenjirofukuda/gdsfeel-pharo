removing
removeObserver: anObserver name: notificationName object: anObject
	|  observerRemoveBlock emptyListRemoveKeyBlock|
	(((notificationName isNil) and: [anObject isNil]) and: [anObserver isNil])
		ifTrue: [^self].

	observerRemoveBlock := [:list |
		list removeAllSuchThat: [:o | o observer == anObserver]].

	emptyListRemoveKeyBlock := [:map | 
		| colKeys |
		colKeys := OrderedCollection new.
		map keysAndValuesDo: [:key :list | list ifEmpty: [colKeys add: key]].
		colKeys do: [:key | map removeKey: key]].

	self lock critical: [
			
	((notificationName isNil) and: [anObject isNil])
		ifTrue: [
			observerRemoveBlock value: wildcard].

	notificationName isEmptyOrNil 
		ifTrue: [
			(nameless at: anObject ifAbsent:[]) 
				ifNotNil: [:list| 
					observerRemoveBlock value: list.
					list ifEmpty: [nameless removeKey: anObject]].
			named valuesDo: [:map | 
				(map valuesDo: [:list | 
					observerRemoveBlock value: list]).
				emptyListRemoveKeyBlock value: map].
			emptyListRemoveKeyBlock value: named]
		ifFalse: [
			(named at: notificationName ifAbsent:[])
				ifNotNil: [:map |
					(map at: anObject ifAbsent: [])
						ifNotNil: [:list3 | 
							observerRemoveBlock value: list3.].
					emptyListRemoveKeyBlock value: map].
			emptyListRemoveKeyBlock value: named]].
			
	Smalltalk garbageCollect.	
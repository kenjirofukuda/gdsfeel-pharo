adding
addObserver: anObserver selector: aSelector name: notificationName object: anObject
	| o map  list2 |
	anObserver
		ifNil: [Exception signal: 'Nil observer passed to addObserver ...'].
	
	aSelector isEmptyOrNil  
		ifTrue: [Exception signal: 'Null selector passed to addObserver ...']. 
	
	(anObserver respondsTo: aSelector)
		ifFalse: [Exception signal: 'Observer can not handle specified selector'].
	
	self lock critical: [		
	o := GdsObservation new observer: anObserver; selector: aSelector.
	
	notificationName isEmptyOrNil
		ifFalse: [ "has name"
			map := named at: notificationName ifAbsentPut:[Dictionary new]. 
			(map at: anObject ifAbsentPut: [LinkedList new])
				ifNotNil: [:list |
					list addLast: o]]
		ifTrue: [
			anObject 
				ifNotNil: [
					list2 := nameless at: anObject ifAbsentPut:[LinkedList new]. 
					list2 addLast: o]
				ifNil: [
					wildcard addFirst: o]].]
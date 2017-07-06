rendering
strokeElement: aGdsElement on: aCanvas
	(#boundary == aGdsElement type)
		ifTrue: [ 
			^ self strokeBoundary: aGdsElement on: aCanvas ]. 
			
	(#path == aGdsElement type)
		ifTrue: [ 
			^ self strokePath: aGdsElement on: aCanvas ]. 

	(#boxtext == aGdsElement type)
		ifTrue: [ 
			^ self strokeBoxtext: aGdsElement on: aCanvas ]. 
			
	(#sref == aGdsElement type)
		ifTrue: [ 
			^ self strokeSref: aGdsElement on: aCanvas ]. 

	(#aref == aGdsElement type)
		ifTrue: [ 
			^ self strokeAref: aGdsElement on: aCanvas ].

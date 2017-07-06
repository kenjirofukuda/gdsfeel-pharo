drawing
drawLocalIgnoreItemOn: aLocalCanvas elements: aElements drawBlock: aDrawBlock
	|  sElements pElements consumed|
	self fastDrawing 
		ifTrue: [ "skip layer orderd drawing"
			^ aElements asArray do: [:e |	aDrawBlock value: aLocalCanvas value: e] ].
	sElements := OrderedCollection new.
	pElements := OrderedCollection new.
	aElements do: [:each |
		each hasLayer 
			ifTrue: [pElements add: each] 
			ifFalse: [sElements add: each]].
		
	sElements asArray do: [:e |		
			aDrawBlock value: aLocalCanvas value: e].
	
	consumed := Set new.	
	pElements := pElements asArray. 
	self structure layers numbers do: [:each| 
		pElements asArray do: [:e |
			((consumed includes: e keyNumber) not and: [ e layerNumber = each])
				ifTrue: [
					aDrawBlock value: aLocalCanvas value: e.
					consumed add: e keyNumber]]]
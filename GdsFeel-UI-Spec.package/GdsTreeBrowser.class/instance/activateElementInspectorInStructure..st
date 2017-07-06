private
activateElementInspectorInStructure: aGdsStructure
	aGdsStructure idSelection elements
		ifNotEmpty: [ :elements | 
			elements size = 1
				ifTrue: [ self activateElementProperty: elements first ] ]
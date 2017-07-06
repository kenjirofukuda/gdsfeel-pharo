private
handleActivatedStructureMorph: aGdsStructureEditorMorph
	aGdsStructureEditorMorph structure
		ifNil: [ self clearUISelection ]
		ifNotNil: [ :s | 
			elementList items: s elements.
			self activateElementInspectorInStructure: s.
			visibleElementList items: aGdsStructureEditorMorph visibleElements ]
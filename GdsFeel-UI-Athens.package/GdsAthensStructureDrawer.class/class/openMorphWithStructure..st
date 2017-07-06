as yet unclassified
openMorphWithStructure: aGdsStructure
	| scene |
	scene := self new initWithStructure: aGdsStructure.
	^ GdsSceneView  new
		scene: scene;
		yourself.

accessing
scene: aScene
	super scene: aScene.
	(aScene respondsTo: #sceneView:)
		ifTrue: [ aScene perform: #sceneView: with: self ].
	
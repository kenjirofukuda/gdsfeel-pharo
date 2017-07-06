as yet unclassified
example
	"PluggableLayersMorph example"
	| m |
	m := self  new.
	m color: (Color gray alpha: 0.2).
	(m layerForKey: #blue) setDrawOnBlock: [:canvas :morph |
		|box|
		box := morph localInnerBounds insetBy: 10.
		canvas frameRectangle: box width: 20 color: (Color blue alpha: 0.3)].
	(m layerForKey: #red) setDrawOnBlock: [:canvas :morph |
		|box|
		box := morph localInnerBounds insetBy: 15.
		canvas frameRectangle: box width: 20 color: (Color red alpha: 0.5)].	
	(m layerForKey: #yellow) setDrawOnBlock: [:canvas :morph |
		|box|
		box := morph localInnerBounds insetBy: 20.
		canvas frameRectangle: box width: 20 color: (Color yellow alpha: 0.5)].	
	(m layerForKey: #line) setDrawOnBlock: [:canvas :morph |
		|box|
		box := morph localInnerBounds insetBy: 20.
		canvas line: 0@0 to: morph localInnerBounds bottomRight width: 10 color: Color green ].	
	(m layerForKey: #circle) setStepBlock: [:morph |
		| localPoint prevPoint|
		localPoint := morph localSensorPoint .
		prevPoint := morph valueOfProperty: #mouseLoc ifAbsent: 0@0. 
		prevPoint = localPoint ifFalse:[
			| localUpdateBounds |
			morph setProperty: #mouseLoc toValue: localPoint.
			localUpdateBounds := Rectangle encompassing: {  localPoint . prevPoint}.
			localUpdateBounds := localUpdateBounds expandBy: 20@20.
			morph invalidRect: (localUpdateBounds translateBy: morph innerBounds origin).
			]
		].
	(m layerForKey: #circle) setDrawOnBlock: [:canvas :morph |
		| p |
		p := (morph valueOfProperty: #mouseLoc  ifAbsent: 0@0).		
		canvas fillOval:  (Rectangle center: p extent: 20@20 )color: Color cyan].	
	(m layerForKey: #circle) stepTime: 100.
	m openInWorld.
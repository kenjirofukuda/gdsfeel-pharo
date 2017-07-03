as yet unclassified
initialize
	"DistanceContextMorph  new openInWorld."
	super initialize.
	startPointMorph := EllipseMorph new
		color: Color red;
		extent: 15@15;
		yourself.
	endPointMorph := BorderedMorph new
		color: Color blue;
		extent: 15@15;
		yourself.
	testPointMorph := EllipseMorph new
		color: Color yellow;
		extent: 15@15;
		yourself.
		{ startPointMorph . endPointMorph .  testPointMorph} do: [ :handle |
			handle
				on: #mouseMove
				send: #dragVertexEvent:fromHandle:
				to: self].	
		
	self addMorph: 	startPointMorph.
	self addMorph: 	endPointMorph.
	self addMorph: 	testPointMorph.
	self color: Color lightGray.
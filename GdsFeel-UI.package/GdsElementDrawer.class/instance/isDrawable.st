testing
isDrawable
	| drawer longSide pixelSize |
	drawer := GdsElementDrawer fromElement: self element morph: morph.
	longSide := self element dataBounds width max: self element dataBounds height.
	pixelSize := self pixelSize: longSide.	
	^ pixelSize > (morph fastDrawing ifTrue: [ 10.0 ] ifFalse: [ 2.0 ])
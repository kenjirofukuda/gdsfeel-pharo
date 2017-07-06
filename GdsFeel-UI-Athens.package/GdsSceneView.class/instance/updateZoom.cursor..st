zoom animation
updateZoom: zoom cursor: cursorPoint

	| zoomState targetZoom start end now fraction newCenter localPoint |
	zoomState := state at:#zooming.
		
	"change the target zoom and increase time a bit"
	targetZoom := zoomState at: 3.
	
	start := zoomState at: 4.
	end := zoomState at: 5.
		
	now := Time millisecondClockValue.
	
	(now > end) ifTrue: [  now := end ].
	
	 "interpolate linearly the target zoom factor over time start ... end"
	fraction := (now - start) / (end - start).
	
	"zoom goes from 1..target zoom"
	targetZoom := 1*(1-fraction) + (targetZoom * fraction).

	self step. "to update transform"
	zoomState at: 3 put: targetZoom * zoom.
	localPoint := (cursorPoint - bounds origin).
		self lockTransformUpdate: true.
		self viewport portCenter: localPoint.		
		self lockTransformUpdate: false.
			
		
	newCenter :=   transform inverseTransform: localPoint.
	zoomState at: 1 put: newCenter.
	zoomState at: 2 put: transform copy.
	zoomState at: 4 put: now.
	zoomState at: 5 put: now + 250 .

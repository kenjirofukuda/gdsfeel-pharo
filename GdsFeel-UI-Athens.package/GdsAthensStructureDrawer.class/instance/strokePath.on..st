rendering
strokePath: aGdsElement on: aCanvas
	| path |
	path := aCanvas cacheAt: aGdsElement ifAbsentPut: [ 
		aCanvas createPath: [ :pb | 
			self pathBuilder: pb points: aGdsElement dataOutlinePoints]].
	self strokePaintFor: aGdsElement on: aCanvas.
	aCanvas drawShape: path.
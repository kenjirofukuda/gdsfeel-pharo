event handler
calcDragBounds
	| globalBounds |
	globalBounds := Rectangle encompassing: (Array with: points first with: points last).
	^ Rectangle origin: ( (globalBounds) origin - self viewport pixelBounds origin ) extent: globalBounds extent.


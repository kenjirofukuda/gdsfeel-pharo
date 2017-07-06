drawing
drawGridOn: aCanvas
	| xSteps ySteps |
	self canGridDraw
		ifFalse: [^self].
	xSteps := self viewport lookupHorizontalGridSteps.
	ySteps := self viewport lookupVerticalGridSteps.
	(xSteps isEmpty and: [ySteps isEmpty])
		ifTrue: [^self].
	self 
		penColor: self gridColor
		during: [
			ySteps do: [:y |
				xSteps do: [:x |
					self drawOn: aCanvas pointAt: x@y]]].
		
	
drawing
drawOn: aCanvas
	| drawingBlock |
	self viewport ifNil: [^super drawOn: aCanvas].
	drawingBlock := [self drawInlineOn: aCanvas].
	self profileEnabled
		ifTrue: [
			Cursor wait 
				showWhile: [
					TimeProfiler spyAllOn: drawingBlock].
			self profileOff]
		ifFalse: [drawingBlock value].

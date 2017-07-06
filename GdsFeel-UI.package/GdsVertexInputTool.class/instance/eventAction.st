action
eventAction
	|vPoint ce1 points |
	points := self currentItem vertices.
	"points ifEmpty: [self item boundary.].	"
	self canFinish
		ifTrue: [
			
			"self item put.
			morph removeOffCanvas.
			morph changed."
			self stopCE.
			^self finish].
	ce1 := self snapedWorldPoint2.
	(points isEmpty)
		ifTrue: [self currentItem ce: ce1]
		ifFalse: [
			(self currentItem digitaizingMode = #straight)
				ifTrue: [
					self currentItem ce: ce1.
					morph invalidBoundsFromPoint1: ce1 point2: points last.].
			vPoint := self  currentItem completionPointFrom: points last to: ce1.
			vPoint ifNotNil:[
				vPoint := self snapedWorldPoint2: vPoint.				
				self currentItem ce: vPoint.
				(self currentItem digitaizingMode = #orthint)
					ifTrue: [
						morph invalidBoundsFromPoint1: vPoint point2: points last.
						self currentItem ce: ce1.
						morph invalidBoundsFromPoint1: ce1 point2: points last.]
					ifFalse: [
						morph invalidBoundsFromPoint1: vPoint point2: points last.].]].				.
	morph invalidRect: (self markUpdateBounds: ce1).

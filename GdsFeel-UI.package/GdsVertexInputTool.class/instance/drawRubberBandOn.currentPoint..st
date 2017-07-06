drawing
drawRubberBandOn: aLocalCanvas currentPoint: aPoint 
	| points wp1 vwp  |
	self structure currentItem editElement ifNotNil: [^self].
	self structure currentItem  isReferenceType  ifTrue: [^self].
	points := (self structure currentItem vertices).
	points ifEmpty: [
		morph removeFeedbackCanvas.
		^self.].
	wp1 :=  points last.
	vwp := self structure currentItem completionPointFrom: wp1 to: aPoint.
	vwp 
		ifNil: [morph drawOn: aLocalCanvas lineFrom: wp1 to: aPoint.] 
		ifNotNil: [
			vwp := self snapedWorldPoint2: vwp.
			morph drawOn: aLocalCanvas lineFrom: wp1 to: vwp.
			(self structure currentItem digitaizingMode = #octagonal)
				ifFalse: [
					morph drawOn: aLocalCanvas lineFrom: vwp to: aPoint.].].
	lastRubberBandPoint 
		ifNotNil: [
			morph invalidBoundsFromPoint1: wp1 point2: lastRubberBandPoint].
	morph invalidBoundsFromPoint1: wp1 point2: aPoint.
	lastRubberBandPoint := aPoint copy.
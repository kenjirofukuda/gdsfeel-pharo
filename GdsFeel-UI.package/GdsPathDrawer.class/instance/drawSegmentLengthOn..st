drawing
drawSegmentLengthOn: aCanvas
	| p1 p2 points center proxyMorph |
	points := self element vertices.
	points ifEmpty: [ ^ self ].
	1 to: points size - 1 do: [ :index |
		| length angle seg mPos |
		p1 := points at: index.
		p2 := points at: index + 1.
		center := (p1 + p2) * 0.5.
		seg := (LineSegment from: p1 to: p2).
		length := seg length printShowingDecimalPlaces: 4. 
		angle := seg asStandDirection asDownDirection direction angle radiansToDegrees.
		mPos := morph innerBounds origin + (morph viewport xy2hv: center).
		proxyMorph := self element valueOfProperty: #proxyMorph ifAbsentPut: [ 
			| m flex |
			morph submorphCount <= 100 ifTrue: [
			m := length asMorph.
			m color: Color white.
			morph addMorph: m.
			m center: mPos.
			flex := m addFlexShell.
			flex rotationDegrees: angle negated.
			flex]
			ifFalse: [nil]].
		proxyMorph ifNotNil: [proxyMorph center: mPos].
		"morph drawOn: aCanvas text: length asString at: center".
		"self drawOn: aCanvas lineFrom: p1 to: p2 width: aWidth ".].
		
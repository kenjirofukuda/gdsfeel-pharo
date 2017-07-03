as yet unclassified
dragVertexEvent: anEvent fromHandle: handle
	| p |
	p := anEvent cursorPoint.
	handle position: p - (handle extent // 2).	
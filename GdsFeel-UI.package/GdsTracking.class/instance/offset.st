accessing
offset
	| p1 p2|
	p1 := self viewport worldPointFromGlobal: event cursorPoint. 
	p2 := self viewport worldPointFromGlobal: currentEvent cursorPoint. 
	^ p2 - p1.	
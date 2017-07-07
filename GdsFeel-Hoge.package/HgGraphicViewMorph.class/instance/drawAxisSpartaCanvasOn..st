drawing sparta
drawAxisSpartaCanvasOn: aSpartaCanvas
	| hvPoint path |
	hvPoint := self viewport xy2hv: 0 @ 0.
	path := aSpartaCanvas path
		moveTo: (hvPoint x @ 0);
		lineTo: (hvPoint x @ self extent y);
		moveTo: (0 @ hvPoint y);
		lineTo: (self extent x @ hvPoint y);
		finish. 
	aSpartaCanvas stroke 
		paint: Color black;
		path: path;
		draw.
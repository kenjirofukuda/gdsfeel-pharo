drawing
drawSpartaCanvasOn: aSpartaCanvas viewport: aViewport
	| hvPoint circle |
	hvPoint := aViewport xy2hv: self origin.
	circle := aSpartaCanvas shape circleAt: hvPoint radius: 2.
	aSpartaCanvas stroke
		paint: Color black;
		path: circle; 
		draw.
	
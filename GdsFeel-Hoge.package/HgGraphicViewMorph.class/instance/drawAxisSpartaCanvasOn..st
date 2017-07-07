drawing
drawAxisSpartaCanvasOn: aSpartaCanvas
	| hvPoint |
	hvPoint := self viewport xy2hv: 0 @ 0.
"	aCanvas line: (hvPoint x @ 0) to: (hvPoint x @ self extent y) color: Color black.
	aCanvas line: (0 @ hvPoint y) to: (self extent x @ hvPoint y) color: Color black.	"
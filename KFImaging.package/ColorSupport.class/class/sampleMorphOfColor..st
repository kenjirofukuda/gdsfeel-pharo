service
sampleMorphOfColor: aColor 
	"(self sampleMorphOfColor: Color blue) openInWorld."

	| r |	
	r := BorderedMorph new.
	r hResizing: #spaceFill.
	r vResizing: #spaceFill.
	r minimumExtent: 10 @ 10.
	r borderWidth: 0.
	r color: aColor.
	r name: '#' , aColor hex.
	^ r
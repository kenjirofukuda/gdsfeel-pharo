accessing
graphicView
	^ graphicView
		ifNil: [ graphicView := (BorderedMorph new
				borderWidth: 0;
				yourself) asSpecAdapter
				color: Color white;
				vSpaceFill;
				hSpaceFill ]
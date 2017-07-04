accessing
graphicView
	^ graphicView
		ifNil: [ 
			graphicView := (HgGraphicViewMorph new
				borderWidth: 0;
				yourself) asSpecAdapter
				color: Color white;
				vSpaceFill;
				hSpaceFill ]
events handling
graphicViewResized: anAnnouncement
	whAnnotationMorph
		setTextWith:
			(self
				pointString: graphicView morph extent
				label1: 'W'
				label2: 'H')
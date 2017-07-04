as yet unclassified
installSampleGraphics
	100
		timesRepeat: [ | x y |
			x := (-100 to: 100 by: 0.1) atRandom.
			y := (-100 to: 100 by: 0.1) atRandom.
			graphics
				add:
					(HgGraphicPoint new
						origin: x @ y;
						yourself) ]
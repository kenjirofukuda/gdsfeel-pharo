drawing
drawOn: aCanvas
	| itemWidth r |
	self colors ifNil: [super drawOn: aCanvas].

	itemWidth := (self width / colors size) asInteger.
	colors doWithIndex: [ :c :index |
		r := Rectangle origin: (0 @ 0) extent: (itemWidth @ self height).
		r := r translateBy: (((index - 1)*itemWidth) @ 0).
		r := r translateBy: self bounds origin.
		aCanvas fillRectangle: r color: c].
		
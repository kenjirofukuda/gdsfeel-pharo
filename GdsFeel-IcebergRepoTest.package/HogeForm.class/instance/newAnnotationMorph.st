private
newAnnotationMorph
	^ (RubTextFieldArea new
		withoutAnyDecorator;
		backgroundColor: Color transparent;
		";"
			"textColor: self textColor"
			"font: self fontToUse;"
			beReadOnly)
		hResizing: #spaceFill;
		"	setBalloonText: 'Current line number/Total line number [Current character number]';"
			yourself
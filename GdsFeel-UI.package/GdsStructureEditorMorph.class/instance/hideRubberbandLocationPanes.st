rubberband
hideRubberbandLocationPanes
	{self deltaLocationPane . self referenceLocationPane }
		do: [:each | self hideLocationPane: each].

action - selection independent
sortByArea
	self structureSortBlock: [ :s1 :s2 | s1 dataExtentForElements area > s2 dataExtentForElements area ]
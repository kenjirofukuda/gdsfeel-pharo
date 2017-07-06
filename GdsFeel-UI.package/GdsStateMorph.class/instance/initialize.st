as yet unclassified
initialize
	super initialize.
	self changeTableLayout.
	self listDirection: #leftToRight.
	self hResizing: #spaceFill.
	self vResizing: #shrinkWrap.	
	self borderWidth: 1.	
	self color: Color white.
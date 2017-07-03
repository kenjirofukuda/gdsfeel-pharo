accessing
fromItemContext: aGdsItemContext 
	super fromItemContext: aGdsItemContext.
	self contents: aGdsItemContext text.
	self angle: aGdsItemContext angle.
	
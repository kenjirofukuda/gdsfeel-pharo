initialization
fromItemContext: aGdsItemContext 
	self datatype: aGdsItemContext datatype.
	self layerNumber: aGdsItemContext layerNumber.
	super fromItemContext: aGdsItemContext 
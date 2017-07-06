element control
setVisible: aBoolean forKey: aSymbol 
	^(self layerForKey: aSymbol) visible: aBoolean
	
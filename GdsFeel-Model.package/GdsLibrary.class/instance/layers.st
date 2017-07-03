accessing
layers
	layers 
		ifNil: [
			layers := GdsLayers new.
			self ensureOpenDuring: [
			self loadLayersTo: layers]].
	^layers
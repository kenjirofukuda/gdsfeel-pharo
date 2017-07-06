drawing
drawVirtualCrossPointOn: aLocalCanvas
	crossPointToPreSeg ifNotNil: [
		morph drawOn: aLocalCanvas markPointAt: crossPointToPreSeg].
	crossPointToPostSeg ifNotNil: [
		morph drawOn: aLocalCanvas markPointAt: crossPointToPostSeg].

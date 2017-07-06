private
displayLoop
	| imageStream abort |
	imageStream := self imageStream.
	abort := false.
	[imageStream atEnd or: [abort]]
		whileFalse: [
			abort := self oneFrameDisplayImage: imageStream next].
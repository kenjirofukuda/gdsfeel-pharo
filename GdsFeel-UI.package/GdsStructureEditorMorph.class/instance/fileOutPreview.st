documentation-support
fileOutPreview
	self structure ifNil: [^nil].
	(self structure previewFile isFile)
		ifFalse: [^self privateFileOutPreview.].
	(self structure dirty)
		ifTrue: [^self privateFileOutPreview.].
		
	
	"Debug:
	(canvas form  magnifyBy: 0.25)  asMorph openInWorld."
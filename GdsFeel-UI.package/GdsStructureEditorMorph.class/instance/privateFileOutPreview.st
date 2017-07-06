documentation-support
privateFileOutPreview
	| previewFile canvas vp |
	self
		hideDrawingLayerDuring: [vp := self createViewport.
			vp viewFit.
			self pushViewport: vp.
			self removeOffCanvas.
			self changed.
			canvas := FormCanvas extent: self bounds extent.
			canvas
				translateBy: self bounds origin negated
				during: [:localCanvas | self drawOn: localCanvas].
			self popViewport.
			self removeOffCanvas.
			self changed.
			previewFile := self structure previewFile .
			previewFile ensureDelete.
			previewFile parent ensureDirectoryIf.
			PNGReadWriter putForm: canvas form onFileNamed: previewFile]
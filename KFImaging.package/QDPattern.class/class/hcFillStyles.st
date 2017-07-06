accessing
hcFillStyles
	^self hcForms collect: [:f | BitmapFillStyle fromForm: f].
accessing
hcForms
	HcForm8x8Array ifNil: [
		HcForm8x8Array := self formsFromRez: QDPattern hcPatternResourceRezFormat].
	^HcForm8x8Array	copy
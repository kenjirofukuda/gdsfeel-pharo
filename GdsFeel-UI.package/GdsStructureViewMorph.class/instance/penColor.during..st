drawing
penColor: aColor during: aBlock
	| savedColor |
	savedColor := self penColor.
	self penColor: aColor.	
	aBlock value.
	self penColor: savedColor.
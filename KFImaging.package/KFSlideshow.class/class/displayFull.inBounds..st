accessing
displayFull: aImage inBounds: aRectangle
	| scaledImage |
	scaledImage := aImage scaledToSize: aRectangle extent.	
	Display fadeImageHorFine: scaledImage at: ((aRectangle extent // 2) - (scaledImage extent // 2) + aRectangle origin).
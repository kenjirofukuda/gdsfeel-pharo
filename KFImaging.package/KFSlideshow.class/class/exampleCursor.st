examples
exampleCursor
	"KFSlideshow exampleCursor."
	| slideShow images |
	slideShow := KFSlideshow new.
	slideShow displayBounds: Rectangle fromUser.
	images := self cursorForms.
	slideShow 
		showImages: images
		delaySeconds: 1
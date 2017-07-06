drawing
drawOn: aCanvas
	"super drawOn: aCanvas."
	ttContext drawOn: aCanvas string: ttContext string bounds: (Rectangle center: (self innerBounds) center extent: self innerBounds width @ self innerBounds height / 4).
	
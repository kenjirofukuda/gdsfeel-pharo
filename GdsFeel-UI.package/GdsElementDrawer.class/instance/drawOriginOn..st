drawing
drawOriginOn: aCanvas
	| origin |
	element vertices ifEmpty: [^self].
	origin := element xy.
	"origin crTrace."
	morph penColor: morph visibleMarkerColor during: [
		morph drawOn: aCanvas markDiamondPointAt: origin].
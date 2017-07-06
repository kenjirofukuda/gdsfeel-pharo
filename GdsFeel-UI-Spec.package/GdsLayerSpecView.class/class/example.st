as yet unclassified
example
	| layer |
	layer := GdsLayer new name: 'Hage'; layerNumber: 1; color: Color blue; yourself. 
	self new layer: layer; openWithSpec.
	"layer explore."
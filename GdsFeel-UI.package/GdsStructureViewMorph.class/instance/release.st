initialization
release
	"self halt."
	self submorphsDo: [:each | each release].
	self removeAllMorphs.
	offCanvas := nil.
	viewport := nil.
	colClipBounds := nil.
	self dependents do: [:each | 
		self removeDependent: each.
		each release].
	super release.
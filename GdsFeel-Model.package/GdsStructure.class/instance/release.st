initialization
release
	idContext := nil.
	item := nil.
	timeCreated := nil.
	timeModified := nil.
	"colElements ifNotNil: [ colElements do: [:each | each release]].
	colElements := nil."
	elements ifNotNil: [ elements do: [:each | each release]].
	elements := nil.
	maxKeyNumber := nil.
	layers release.
	layers := nil.
	name := nil.
	super release.

	
private
pushDirtyReservedArea: aGdsElement
	"!!!NOTE!!!"
	"if this effect is active. then after must send #comitDirty."
	dirtyReservedArea ifNil: [dirtyReservedArea := OrderedCollection new].
	dirtyReservedArea add: aGdsElement.
	
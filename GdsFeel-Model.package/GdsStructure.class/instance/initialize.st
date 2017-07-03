initialization
initialize
	| time |
	super initialize.	
	time := DateAndTime now.
	timeCreated := time copy.
	timeModified := time copy.
	"colElements := OrderedCollection new."
	elements := nil.
	maxKeyNumber := nil.
	layers := GdsLayers new.
	idContext := GdsIdContext new.
	idContext structure: self.
	item := (GdsItemContext newWithNumber: 0) structure: self; yourself.
	
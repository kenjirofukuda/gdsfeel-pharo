switch flow common
switchPrimitiveBegin: record 
	#LAYER = record type
		ifTrue: [
			element layerNumber: record int2.
			self upCount: #LAYER.
			^true].
	"TODO: not have DATATYPE elements"	
	#DATATYPE = record type
		ifTrue: [
			element datatype: record int2.
			self upCount: #DATATYPE.
			^true].

	^false
	
	
	
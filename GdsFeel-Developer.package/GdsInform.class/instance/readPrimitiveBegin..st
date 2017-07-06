as yet unclassified
readPrimitiveBegin: element
	|  record |

	record := reader nextRecord.
	#LAYER = record type
		ifFalse: [^self abort: (self missingField:  record type ofElement: element)].
	element layerNumber: record int2.

	record := reader nextRecord.
	#DATATYPE = record type
		ifFalse: [^self abort: (self missingField:  record type ofElement: element)].
	element datatype: record int2.

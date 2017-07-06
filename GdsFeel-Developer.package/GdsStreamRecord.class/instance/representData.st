printing
representData
	| sel data |
	sel := self convertSelector.
	sel  ifNil: [^self dataBytes].
		
	data := self perform: sel.
	(data isKindOf: Collection)
		ifTrue: [
			data size = 1
				ifTrue: [^data first].
			(#(BGNLIB BGNSTR) includes: self type)
				ifTrue: [^self dateAndTimes: data]].
	^data.
	
	
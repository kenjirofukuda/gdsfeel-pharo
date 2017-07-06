switch flow common
switchElementEnd: record usingXY: usingXY
	| handled |
	(usingXY and: [#XY = record type])		
		ifTrue: [
			handled := self switchXY: record.			
			handled ifTrue: [^true]].

	#PROPATTR = record type
		ifTrue: ["FIXME"].
		
	#PROPVALUE = record type
		ifTrue: ["FIXME"].

	#ENDEL = record type
		ifTrue: [
			self checkPreRequiredConsumed: record type.
			self result: {false . element}.
			self break: true.
			self upCount: #ENDEL.
			^true].
	^false
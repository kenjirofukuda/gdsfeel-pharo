as yet unclassified
readStruct: aRecord structure: aGdsStructure
	| result result2 |
	result := {false . nil}.
	#STRNAME = aRecord type
		ifTrue: [ | name|
			name := aRecord asString.
			aGdsStructure name: name.
			self stdout: ('strname = {1}' format: {name}).
			^result].

	aRecord  isElementHeader 
		ifTrue: [ | sel newElement |
			(GdsElement installedElementType: aRecord type)
				ifTrue: [
					sel := ('read{1}:' format: {aRecord type asString}) asSymbol.
					result2 := self perform: sel with: aGdsStructure.
					newElement := result2 last.
					newElement ifNotNil: [aGdsStructure addElement: newElement].
					^{false .  aGdsStructure}]].

	#ENDSTR = aRecord type
		ifTrue: [^{true . aGdsStructure}].
	((#BGNSTR = aRecord type) or: [#ENDLIB = aRecord type])
		ifTrue: [
			self stderr: 'Incorrect record type in #readStruct'.
			^{true . nil}].
	^result													
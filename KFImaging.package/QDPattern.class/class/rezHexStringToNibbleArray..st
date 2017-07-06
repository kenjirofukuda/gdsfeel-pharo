objects from disk
rezHexStringToNibbleArray: aRez8ByteHexString
	"$"

	"FFFF FFFF FFFF FFFF"

	""

	| col rest |
	col := OrderedCollection new.
	(aRez8ByteHexString asArray 
		select: [ :ch | ch isAlphaNumeric ]) 
		do: [ :c | col add: ('16r' , c asString) asNumber ].
	rest := 16 - col size.
	rest > 0
		ifTrue: [ rest timesRepeat: [ col add: 0 ] ].
	^ col asArray
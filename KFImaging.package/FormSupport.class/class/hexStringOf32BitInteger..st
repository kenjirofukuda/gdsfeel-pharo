service
hexStringOf32BitInteger: aNumber

	"Transcript cr; show: (self hexStringOf32BitInteger: -1)"
	| r16 str |
	r16 := aNumber radix: 16.
	str := r16 copyReplaceAll: '16r' with: ''. 
	(8 - (str size)) timesRepeat: [
		str := '0', str.
	]. 
	str := '16r', str.
	^str.
	
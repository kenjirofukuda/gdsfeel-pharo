private
readGdsReal: aByteArray 
	| sign exponent mantissaInt mantissaFloatBitWidth mantissaFloat result |
	self assert: [aByteArray size = 4 or: [aByteArray size = 8]].
	sign := (aByteArray at: 1) bitAnd: 16r80.
	exponent := ((aByteArray at: 1) bitAnd: 16r7F) - 64.
  	mantissaInt := 0.
	mantissaFloatBitWidth := (aByteArray size - 1) * 8.
	2 to: aByteArray size do: [:i |
		mantissaInt := mantissaInt << 8.
		mantissaInt := mantissaInt + (aByteArray at: i)].
 	mantissaFloat := mantissaInt / (2 raisedTo: mantissaFloatBitWidth) asFloat.
	result :=  mantissaFloat * (16 raisedTo: exponent).
	sign = 1
		ifTrue: [result := result negated].
	^result
"
storage cost: 8byte(4word) 16bit machine

8-byte real:
SEEEEEEE MMMMMMMM MMMMMMMM MMMMMMMM MMMMMMMM MMMMMMMM MMMMMMMM MMMMMMMM
"
	
command-handler
requestEnterText
	|reply default|
	default := self structure currentItem text.
	reply := self privateStringInput: 'Enter Text String:' defaults: default.
	reply ifEmpty: [^self].
	 self structure currentItem text: reply.
examples
exampleSandBox
	"GdsStation exampleSandBox."
	<example>
	| randomPointGenerator |
	randomPointGenerator := [ :size | size atRandom @ size atRandom ].
	GdsStation default ensureSandbox.
	GdsStation default currentItem
		ifNotNil: [ :item | 
			300
				timesRepeat: [ item
						putPathFrom: (randomPointGenerator value: 540)
						to: (randomPointGenerator value: 540) ] ].
	GdsStation default quit
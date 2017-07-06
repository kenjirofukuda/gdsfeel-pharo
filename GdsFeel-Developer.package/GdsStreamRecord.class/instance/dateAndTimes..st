printing
dateAndTimes: aCollection
	| fixYear |
	self assert: [aCollection size = 12].
	fixYear := [:yy | (yy between: 85 and: 99) ifTrue: [yy + (2000 - 100)] ifFalse: [yy + 2000]].
	^{DateAndTime
			year:  (fixYear value: (aCollection at: 1))
			month:  (aCollection at: 2)
			day:  (aCollection at: 3)
			hour:  (aCollection at: 4)
			minute:  (aCollection at: 5)
			second: (aCollection at: 6).
		DateAndTime
			year: (fixYear value: (aCollection at: 7))
			month:  (aCollection at: 8)
			day:  (aCollection at: 9)
			hour:  (aCollection at: 10)
			minute:  (aCollection at: 11)
			second: (aCollection at: 12).
		}
	
	
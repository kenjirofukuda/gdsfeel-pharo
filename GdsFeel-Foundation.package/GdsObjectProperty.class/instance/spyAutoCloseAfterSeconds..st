debugging
spyAutoCloseAfterSeconds: aNumber
	| spyWindow |
	spyWindow := self spy.
	[ (Delay forSeconds: aNumber) wait.
	  spyWindow delete] fork.
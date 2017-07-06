command-handler
confirmWipe
	| reply |
	reply := UIManager default confirm: 'Are you sure ?'.
	reply ifFalse: [^self].
	self structure currentItem wipe.
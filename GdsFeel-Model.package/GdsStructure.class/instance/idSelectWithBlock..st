as yet unclassified
idSelectWithBlock: aElementBlock
	(self elements select: aElementBlock)
		do: [ :e | self idSelection idAdd: e keyNumber ]